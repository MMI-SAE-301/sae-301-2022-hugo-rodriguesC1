<script setup lang="ts">
import Button from "@/components/Button.vue";
import Circles from "@/components/Circles.vue";

</script>

<template>
  <div class="grid grid-cols-10 gap-[30px] row-auto lg:grid-cols-8 pb-72 md:grid-cols-6 sm:grid-cols-4">
    <div class="font-poppins col-span-2 mt-32 col-start-2">
      <h1 class="title">
        Montre connectée personnalisable
      </h1>
      <p class="paragraphe mt-12">
        Lancez-vous dans la personnalisation
        de la toute dernière montre connectée 
        Tik Tak. Cette montre épurée au design 
        original offre un large choix de 
        personnalisation. Cliquez sur le 
        bouton pour commencer l’expérience. 
        Ne tardez pas, seulement 150 
        exemplaires sont disponibles.
      </p>
    </div>
    <RouterLink to="/montre/new" class="row-start-2 col-start-2 col-span-1 mt-10"><Button /></RouterLink>

    <Circles  class="col-start-6 mt-16 lg:col-start-5 md:col-start-4 sm:col-start-3"/>

    <div class="row-start-3 lg:col-start-2 md:col-start-0 lg:col-span-6 md:col-span-3 font-poppins text-6xl font-normal uppercase mt-52 flex flex-col gap-5">
      <div class="flex flex-row gap-7 items-center justify-end ">
        <div>Personnalise</div>
        <img src="@/assets/visuel1.webp" alt="visuel" class="max-h-16">
      </div>
      <div class="flex flex-row gap-7 items-center justify-start">
        <img src="@/assets/visuel2.webp" alt="visuel" class="max-h-16 ">
        <div>ta montre</div>
      </div>
      <div class="flex flex-row gap-7 items-center justify-center">
        <div>connectée</div>
        <img src="@/assets/visuel3.webp" alt="visuel" class="max-h-16 ">
      </div>
    </div>

    <div class="flex flex-row col-span-6 col-start-2 row-start-4 mt-40 justify-between items-center px-40">
      <div class="flex flex-col gap-12 font-poppins">
        <h2 class="title">
          Montre connectée <br>
          haut de gamme
        </h2>
        <p class="paragraphe w-5/6">
          Pour ce nouveau modèle, nous avons 
          séléctionné les meilleurs technologies
           disponibles. Autonomie, performances
            et précision des capteurs, tous les
             aspects ont été améliorés.
        </p>
      </div>
      <img src="@/assets/MU2.webp" alt="visuel de la montre" class="max-h-96">
    </div>

    <div class="flex flex-row col-span-6 col-start-2 row-start-5 mt-40 items-center px-40 gap-28">
      <img src="@/assets/MU3.webp" alt="visuel de la montre" class="max-h-96">
      <div class="flex flex-col gap-12 font-poppins">
        <h2 class="title">
          Un design original
        </h2>
        <p class="paragraphe w-5/6">
          Pour eux qui recherchent une montre 
          connectée qui se démarque visuellement,
           le modèle Dali est fait pour vous. 
           Ce cadran à la forme irréguilère 
           apporte un vent de fraicheur dans 
           le monde des montres connectées
        </p>
      </div>
    </div>

    <RouterLink to="/montre/new" class=" row-start-6 col-span-2 col-start-4 mx-20 mt-28"><Button /></RouterLink> 


  </div>
</template>