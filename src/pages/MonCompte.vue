<script setup lang="ts">

import {user, supabase} from '../supabase'

</script>

<template>
    <div class="grid grid-cols-10 gap-[30px] row-auto lg:grid-cols-8 pb-72">
        <div class="font-poppins col-span-2 mt-32 col-start-2">
            <h1 class="font-poppins font-medium text-5xl">{{user.user_metadata.full_name}}</h1>
            <div class="text-xl mt-12 font-normal">{{user.email}}</div>
            <h2 class="font-medium text-3xl mt-12">Mes créations</h2>    
        </div>
        <div class="row-start-2 col-start-2 col-span-6 bg-red-400 h-96 w-full">
            
        </div>
    </div>
</template>

<!-- <button class="p-3 bg-rose-200 text-zinc-700 text-xl mt-24" v-if="user" @pointerdown="supabase.auth.signOut()">
    Se déconnecter
    </button> -->