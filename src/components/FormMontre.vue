<script setup lang="ts">
import type { Montre } from "@/types";
import { colors } from "@/types";
import { ref } from "vue";
import { useRouter } from "vue-router";
import { supabase } from "../supabase";
import FormKitListColors from "./FormKitListColors.vue";
import MontreConnectee from "./MontreConnectee.vue";

const router = useRouter();

const props = defineProps(["id", "data"]);

const montre = ref<Montre>(props.data ?? {});

const forme = ref('');
forme.value = 'Ovale';

const commandeClick = ref()
commandeClick.value = false


if (props.id) {
  // On charge les données de la maison
  let { data, error } = await supabase
    .from("montre")
    .select("*")
    .eq("montre_id", props.id);
  if (error || !data)
    console.log("n'a pas pu charger le table Maison :", error);
  else montre.value = data[0];
}

async function upsertMontre(dataForm, node) {
  dataForm.user_id = supabase.auth.user().id
  const { data, error } = await supabase.from("montre").upsert(dataForm);
  if (error) node.setErrors([error.message]);
  else {
    node.setErrors([]);
    router.push({ name: "montre-edit-id", params: { id: data[0].montre_id } });
  }
}

async function commander(){
  const { data, error } = await supabase
  .from('montre')
  .update({ montre_commandee: true })
  .eq('montre_id', props.id)
  commandeClick.value=true
}

</script>

<template>
  <div class="grid grid-cols-10 gap-[30px] row-auto  pb-96">
    
    <div class="col-span-8 col-start-2 mt-32 relative">
      <h1 class="text-5xl font-medium mb-12">Personnalisation</h1>
      <FormKit type="form" v-model="montre" @submit="upsertMontre" :submit-attrs="{classes: { input: 'sr-only' }}" submit-label="Enregister" >
          <div class="flex flex-row gap-32">
            <div>
              <FormKitListColors name="bracelet" label="Bracelet"/>
              <FormKit name="forme"
                       :value="forme"
                       v-model="forme"
                       type="radio"
                       label="Forme du cadran"
                       :options="['Ovale', 'Dali']"
                       :sections-schema="{inner:{$el:null},decorator:{$el:null},}"
                       input-class="peer sr-only"
                       options-class="flex gap-5 mb-3 mt-1"
                       legend-class="font-poppins text-3xl font-medium w-full"
                       >
                        <template #label="context">
                          <div class="h-12 w-40 bg-white  peer-checked:bg-green-75 relative" :style="{backgroundColor: context.option.value}">
                            <span class="absolute inset-0 flex items-center justify-center font-poppins text-xl font-normal">{{context.option.label}}</span>
                          </div>
            
                        </template>
                      </FormKit>
              <FormKitListColors v-if="forme == 'Ovale'" name="ecran" label="Ecran"/>
              <FormKitListColors v-if="forme == 'Ovale'" name="boitier" label="Boitier"/>
              <FormKitListColors v-if="forme == 'Dali'" name="ecran" label="Ecran"/>
              <FormKitListColors v-if="forme == 'Dali'" name="boitier" label="Boitier"/>
            </div>
            <div class="w-96 -mt-32">
              <MontreConnectee v-bind="montre"/>
            </div>
            <div class="flex flex-col gap-5">
              <div class="font-poppins text-3xl font-medium w-full">Prix</div>
              <div class="font-poppins text-xl font-normal">299.99 €</div>
              <div class="font-poppins bg-white text-zinc-700 w-full px-5 py-2 uppercase text-xl mt-2">Il reste seulement 150 exemplaires</div>
              <FormKit type="submit" input-class="font-poppins bg-rose-100 px-5 py-2 uppercase text-xl mt-20" >Enregister</FormKit>
              <FormKit v-if="props.id" name="commander" label="commander" type="button" input-class="font-poppins bg-blue-200 px-5 py-2 uppercase text-xl mt-2" @click="commander"/>
              <div v-if="commandeClick" class="font-poppins text-xl mt-2">Merci pour votre commande, <br>
                   un code de réduction vous attend <br>
                   dans votre boite mail</div>
            </div>
          </div>
      </FormKit>
    </div>
    
  </div>
</template>

