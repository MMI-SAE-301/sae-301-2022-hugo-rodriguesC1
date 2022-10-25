<script setup lang="ts">
import FormMontre from "../../../components/FormMontre.vue";
defineProps<{
  data: string;
}>();
</script>


<template>
  <FormMontre :data="JSON.parse(data)" />
</template>