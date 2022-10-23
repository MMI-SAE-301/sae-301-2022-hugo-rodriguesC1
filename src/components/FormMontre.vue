<script setup lang="ts">
import type { Montre } from "@/types";
import { colors } from "@/types"
import { ref } from "vue";
import { useRouter } from "vue-router";
import { supabase } from "../supabase";
import FormKitListColors from "./FormKitListColors.vue";
import MontreConnectee from "./MontreConnectee.vue";

const router = useRouter();

const props = defineProps(["id", "data"]);

const montre = ref<Montre>(props.data ?? {});



</script>

<template>
  <div class="p-2">
    <div class="w-64">
        <MontreConnectee/>
    </div>
    <FormKit type="form" v-model="montre" :submit-attrs="{classes: { input: 'bg-green-600 text-green-100 p-2 rounded-lg text-xl mt-2' }}" >
        <FormKitListColors name="Bracelet" label="Bracelet"/>
        <FormKitListColors name="Cadran intérieur" label="Cadran intérieur"/>
        <FormKitListColors name="Cadran extérieur" label="Cadran extérieur"/>
        <FormKitListColors name="Cadran intérieur" label="Cadran intérieur"/>
        <FormKitListColors name="Cadran extérieur" label="Cadran extérieur"/>

    
        
        <FormKit name="commander" label="commander" type="button" input-class="text-blue-100 text-xl p-2 bg-blue-600 rounded-lg" />
    </FormKit>
  </div>
</template>
