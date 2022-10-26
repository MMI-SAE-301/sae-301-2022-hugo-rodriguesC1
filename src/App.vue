<script setup lang="ts">

import {user} from '../src/supabase'

</script>

<template>
  <nav class="fixed bg-white w-full max-w-full h-36 flex justify-between px-32 items-center  z-20">
    <RouterLink to="/"><img src="/src/assets/Logo.svg" alt="Logo du site" class="w-60"></RouterLink>
    <ul class="flex gap-28 font-poppins uppercase text-xl font-medium items-center">
      <li><RouterLink to="/">Accueil</RouterLink></li>
      <li><RouterLink to="/montre/new">Personnaliser</RouterLink></li>
      <li><RouterLink v-if="user" to="/moncompte">Mon compte</RouterLink><RouterLink v-else to="/connexion">Mon compte</RouterLink></li>
      <li><img src="@/assets/cartIcon.svg"/></li>
    </ul>
  </nav>

  <!-- Affiche les pages -->
  <Suspense>
    <router-view class="bg-beige-100 w-full pt-32" />
  </Suspense>

  <footer class="w-full bg-white h-96 px-72 flex items-center justify-between">
    <div>
      <ul class="font-poppins uppercase text-xl font-medium flex flex-col gap-16">
        <li><RouterLink to="/">Accueil</RouterLink></li>
        <li><RouterLink to="">Personnaliser</RouterLink></li>
        <li><RouterLink to="/connexion">Mon compte</RouterLink></li>
      </ul>
    </div>
    <div>
      <img src="@/assets/Logo.svg" alt="logo du site">
    </div>
    <div>
      <ul class="font-poppins uppercase text-xl font-medium flex flex-col gap-16">
        <li><RouterLink to="#"/>Mentions légales</li>
        <li><RouterLink to="#"/>Politique de confidentialité</li>
        <li><RouterLink to="#">Cookies</RouterLink></li>
      </ul>
    </div>
  </footer>
</template>


