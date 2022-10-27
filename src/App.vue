<script setup lang="ts">

import {user} from '../src/supabase'
import {ref} from 'vue'

const darkMode = ref()

const isDarkMode = () => {
  if(window?.matchMedia(
    '(prefers-color-scheme:dark)').matches){
      darkMode.value=true
    }else{
      darkMode.value=false
    }
}

isDarkMode()



</script>

<template>
  <nav class="fixed bg-white w-full max-w-full h-28 flex justify-between pl-32 pr-20 items-center py-3 z-20 dark:bg-black dark:text-gray-200">
    <RouterLink v-if="darkMode==false" to="/"><img src="/src/assets/Logo.svg" alt="Logo du site" class="max-h-24"></RouterLink>
    <RouterLink v-else to="/"><img src="/src/assets/LogoAlt.svg" alt="Logo du site" class="max-h-24"></RouterLink>
    <ul class="flex gap-28 font-poppins uppercase text-xl font-medium items-center">
      <li><RouterLink to="/" class="hover:bg-green-75 hover:rounded-full p-3 hover:text-zinc-700  animHeader">Accueil</RouterLink></li>
      <li><RouterLink v-if="user" to="/montre/new" class="hover:bg-rose-200 hover:rounded-full p-3 hover:text-zinc-700 animHeader">Personnaliser</RouterLink><RouterLink v-else to="/connexion" class="hover:bg-rose-200 hover:rounded-full p-3 hover:text-zinc-700 animHeader">Personnaliser</RouterLink></li>
      <li><RouterLink v-if="user" to="/moncompte" class="hover:bg-blue-200 hover:rounded-full p-3 hover:text-zinc-700 animHeader">Mon compte</RouterLink><RouterLink v-else to="/connexion" class="hover:bg-blue-200 hover:rounded-full p-3 hover:text-zinc-700 animHeader">Se connecter</RouterLink></li>
      <li><img src="@/assets/cartIcon.svg"/></li>
    </ul>
  </nav>

  <!-- Affiche les pages -->
  <Suspense>
    <router-view class="bg-beige-100 w-full pt-20 dark:bg-zinc-900 dark:text-gray-200" />
  </Suspense>

  <footer class="w-full bg-white h-96 px-72 flex items-center justify-between dark:bg-black dark:text-gray-200">
    <div>
      <ul class="font-poppins uppercase text-xl font-medium flex flex-col gap-16">
        <li><RouterLink to="/">Accueil</RouterLink></li>
        <li><RouterLink to="">Personnaliser</RouterLink></li>
        <li><RouterLink to="/connexion">Mon compte</RouterLink></li>
      </ul>
    </div>
    <div>
      <img v-if="darkMode==false" src="@/assets/Logo.svg" alt="logo du site">
      <img v-else src="@/assets/LogoAlt.svg" alt="logo du site" >
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


