<script setup lang="ts">
import Button from "@/components/Button.vue";
import Circles from "@/components/Circles.vue";
</script>

<template>
  <div class="grid grid-cols-10 gap-[30px] row-auto lg:grid-cols-8 pb-72">
    <div class="font-poppins col-span-2 mt-32 col-start-2">
      <h1 class="text-5xl font-medium ">
        Montre connectée personnalisable
      </h1>
      <p class="font-light text-xl mt-12">Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
                                          Lorem Ipsum has been the industry's standard dummy text ever since the 1500s 
                                          and typesetting industry.
      </p>
    </div>
    <RouterLink to="/montre/new" class="row-start-2 col-start-2 col-span-1 mt-10"><Button /></RouterLink>

    <Circles  class="col-start-6 mt-16 lg:col-start-5"/>
  </div>
</template>