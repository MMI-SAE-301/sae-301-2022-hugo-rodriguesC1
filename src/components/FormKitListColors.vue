
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
             options-class="flex gap-1 mb-3 mt-1"
              >
        <template #label="context">
          <div class="h-8 w-10 border-4 peer-checked:border-blue-400" :style="{backgroundColor: context.option.value}"/>
          <span class="sr-only">{{context.option.label}}</span>
        </template>
    </FormKit>
</template>