
<script setup lang="ts">
import { colors } from "@/types";
defineProps<{
  name?: string;
  label?: string;
}>();
</script>



<template>
    <FormKit :name="name"
             :label="label"
             value="#FFFFFF"
             type="radio"
             :options="colors"
             :sections-schema="{inner:{$el:null},decorator:{$el:null},}"
             input-class="peer sr-only"
             options-class="flex gap-1 mb-12 mt-1"
             legend-class="font-poppins text-3xl font-medium "
             >
        <template #label="context">
          <div class="h-9 w-16  peer-checked:border-blue-400 peer-checked:border-2" :style="{backgroundColor: context.option.value}"/>
          <span class="sr-only">{{context.option.label}}</span>
        </template>
    </FormKit>
</template>