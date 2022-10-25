<script setup lang="ts">
import Login from '@/components/Login.vue'
</script>

<template>
    <div class="grid grid-cols-10 gap-[30px] row-auto lg:grid-cols-8 pb-96">
        <div class="font-poppins col-span-2 mt-32 col-start-2">
            <h1 class="text-5xl font-medium ">
                Connexion
            </h1>
            <p class="font-light text-xl mt-12">Connectez-vous pour commencer à personnaliser vos modèles de montres. 
                                                Une fois connecté, créer la montre connectée qui vous ressemble.
            </p>
        </div>
        <Login/>
    </div>
</template>