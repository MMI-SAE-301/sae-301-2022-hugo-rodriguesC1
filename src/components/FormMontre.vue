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
console.log(forme)

</script>

<template>
  <div class="p-2 flex gap-20">
    <div class="w-64">
        <MontreConnectee v-bind="montre"/>
    </div>
    <FormKit type="form" v-model="montre" :submit-attrs="{classes: { input: 'bg-green-600 text-green-100 p-2 rounded-lg text-xl mt-2' }}" submit-label="Enregister" >
        <FormKitListColors name="bracelet" label="Bracelet"/>
        <FormKit name="forme"
                 :value="forme"
                 v-model="forme"
                 type="radio"
                 label="Forme du cadran"
                 :options="['Ovale', 'Dali']"
                 options-class="flex gap-5 mb-3 mt-1"
                 />
        <FormKitListColors v-if="forme == 'Ovale'" name="Ecran2" label="Ecran"/>
        <FormKitListColors v-if="forme == 'Ovale'" name="Boitier2" label="Boitier"/>
        <FormKitListColors v-if="forme == 'Dali'" name="Ecran1" label="Ecran Dali"/>
        <FormKitListColors v-if="forme == 'Dali'" name="Boitier1" label="Boitier Dali"/>

        <FormKit name="commander" label="commander" type="button" input-class="text-blue-100 text-xl p-2 bg-blue-600 rounded-lg" />
    </FormKit>
  </div>
</template>
