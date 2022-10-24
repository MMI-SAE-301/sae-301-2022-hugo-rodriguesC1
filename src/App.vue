<template>
  <nav class="bg-white w-full h-36 flex justify-between px-32 items-center">
    <RouterLink to="/"><img src="/src/assets/Logo.svg" alt="Logo du site" class="w-60"></RouterLink>
    <ul class="flex gap-28 font-poppins uppercase text-xl font-medium">
      <li><RouterLink to="/"/>Accueil</li>
      <li><RouterLink to=""/>Personnaliser</li>
      <li><RouterLink to="/connexion">Mon compte</RouterLink></li>
    </ul>
  </nav>

  <!-- Affiche les pages -->
  <Suspense>
    <router-view class="bg-beige-100 w-full h-full" />
  </Suspense>
</template>

<script setup lang="ts">
import { Bars3Icon } from "@heroicons/vue/20/solid";
</script>
