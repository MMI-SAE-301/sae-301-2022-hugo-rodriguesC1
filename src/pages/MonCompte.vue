<script setup lang="ts">

import {user, supabase} from '../supabase'

</script>

<template>
    <div class="grid grid-cols-10 gap-[30px] row-auto lg:grid-cols-8 pb-72">
        <div class="font-poppins col-span-2 mt-32 col-start-2">
            <h1 class="font-poppins font-medium text-3xl">{{user.user_metadata.full_name}}</h1>
            <div>{{user.email}}</div>
            <button class="p-3 bg-green-800 text-white" v-if="user" @pointerdown="supabase.auth.signOut()">
            Se déconnecter ({{user.email}})
                </button>
        </div>
    </div>
</template>