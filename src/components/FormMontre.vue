<script setup lang="ts">
import type { Montre } from "@/types";
import { colors, materiaux } from "@/types";
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

const reste = ref()

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
  if (dataForm.ecran == null){alert("veuillez sélectionner une couleur pour l'écran")}
  else{
    dataForm.user_id = supabase.auth.user().id
    const { data, error } = await supabase.from("montre").upsert(dataForm);
    if (error) node.setErrors([error.message]);
    else {
      node.setErrors([]);
      router.push({ name: "montre-edit-id", params: { id: data[0].montre_id } });
    }
  }
}

async function commander(){
  const { data, error } = await supabase
  .from('montre')
  .update({ montre_commandee: true })
  .eq('montre_id', props.id)
  commandeClick.value=true
  setTimeout(() => {
    router.push("/moncompte");
  }, 7000)
}

async function supprimer() {
  const { error } = await supabase
    .from("montre")
    .delete()
    .eq("montre_id", props.id );
  if (error) {
    console.error(
      "Erreur à la suppression de la montre, erreur :",
      error
    );
  } else {
    router.push("/");
  }
}



//comptage des exemplaires restants
const { error, data, count } = await supabase
.from('montre')
.select('*', { count: 'exact', head:true })
.eq("montre_commandee", true)
reste.value = (150 - count)


</script>

<template>
  <div class="grid grid-cols-10 gap-[30px] row-auto  pb-96">
    
    <div class="col-span-8 col-start-2 mt-32 relative">
      <h1 class="text-5xl font-medium mb-12">Personnalisation</h1>
      <FormKit type="form" v-model="montre" @submit="upsertMontre" :submit-attrs="{classes: { input: 'sr-only' }}" submit-label="Enregister" >
          <div class="flex flex-row gap-32 items-center">
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
                          <div class="h-12 w-40 bg-white  peer-checked:bg-green-75 relative dark:peer-checked:bg-green-300">
                            <span class="absolute inset-0 flex items-center justify-center font-poppins text-xl font-normal dark:text-zinc-900">{{context.option.label}}</span>
                          </div>
            
                        </template>
                      </FormKit>
              <FormKitListColors v-if="forme == 'Ovale'" name="ecran" label="Ecran"/>
              <FormKitListColors v-if="forme == 'Ovale'" name="boitier" label="Boitier"/>
              <FormKitListColors v-if="forme == 'Dali'" name="ecran" label="Ecran"/>
              <FormKitListColors v-if="forme == 'Dali'" name="boitier" label="Boitier"/>
            </div>
            <div class="w-96">
              <MontreConnectee v-bind="montre"/>
            </div>
            <div class="flex flex-col gap-5">
              <FormKit name="materiaux_bracelet"
                       type="radio"
                       label="Matéraux du bracelet"
                       :options="materiaux"
                       :sections-schema="{inner:{$el:null},decorator:{$el:null},}"
                       input-class="peer sr-only"
                       options-class="flex gap-5 mb-5 mt-1"
                       legend-class="font-poppins text-3xl font-medium w-full"
                       >
                        <template #label="context">
                          <div class="h-12 w-40 bg-white  peer-checked:bg-green-75 relative dark:peer-checked:bg-green-300">
                            <span class="absolute inset-0 flex items-center justify-center font-poppins text-xl font-normal dark:text-zinc-900 ">{{context.option.label}}</span>
                          </div>
            
                        </template>
                      </FormKit>
              <FormKit name="materiaux_boitier"
                       type="radio"
                       label="Matéraux du Boitier"
                       :options="materiaux"
                       :sections-schema="{inner:{$el:null},decorator:{$el:null},}"
                       input-class="peer sr-only"
                       options-class="flex gap-5 mb-3 mt-1"
                       legend-class="font-poppins text-3xl font-medium w-full"
                       >
                        <template #label="context">
                          <div class="h-12 w-40 bg-white  peer-checked:bg-green-75 relative dark:peer-checked:bg-green-300" >
                            <span class="absolute inset-0 flex items-center justify-center font-poppins text-xl font-normal dark:text-zinc-900">{{context.option.label}}</span>
                          </div>
            
                        </template>
                      </FormKit>
              <div class="font-poppins text-3xl font-medium w-full">Prix</div>
              <div class="font-poppins text-xl font-normal">299.99 €</div>
              <div class="font-poppins bg-white text-zinc-700 w-full px-5 py-2 uppercase text-xl mt-2">Il reste seulement {{reste}} exemplaires</div>
              <div class="flex flex-row gap-3 items-center justify-between">
                <FormKit type="submit" input-class="font-poppins bg-green-75 px-5 py-2 uppercase text-xl dark:text-zinc-900 dark:bg-green-300" >Enregister</FormKit>
                <FormKit v-if="props.id" name="commander" label="commander" type="button" input-class="font-poppins bg-blue-200 px-5 py-2 uppercase text-xl dark:text-zinc-900 dark:bg-blue-300" @click="commander"/>
                <FormKit v-if="props.id" name="Supprimer" label="Supprimer" type="button" input-class="font-poppins bg-rose-200 px-5 py-2 uppercase text-xl dark:text-zinc-900 dark:bg-rose-300" @click="supprimer"/>
              </div>
              
            </div>
          </div>
      </FormKit>
    </div>
    <div v-if="commandeClick" class="font-poppins text-2xl absolute p-8 top-1/3 left-1/3 right-1/3 mx-auto bg-gray-700 bg-opacity-90 flex items-center justify-center text-center">Merci pour votre commande, <br>
                   un code de réduction vous attend <br>
                   dans votre boite mail. <br>
                   Vous allez être redirigé.</div>
  </div>
</template>

