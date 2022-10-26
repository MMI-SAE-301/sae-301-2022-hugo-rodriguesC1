<script setup lang="ts">
import { supabase, user } from '../supabase';
import { useRouter } from "vue-router";
import LoginButton from './LoginButton.vue';

const router = useRouter();

async function loginG() {
    supabase.auth.signIn({provider: 'google'}, {redirectTo:'http://127.0.0.1:5173/moncompte'})

}
async function loginF() {
    supabase.auth.signIn({provider: 'facebook'})

}

</script>
<template>
    <div class="col-span-2 col-start-5 mt-36">
        <LoginButton :logo="'/src/assets/gLogo.svg'" :name="'Google'" @click="loginG"/>
        <LoginButton :logo="'/src/assets/fbLogo.svg'" :name="'Facebook'" @click="loginF" class="mt-9"/>

    </div>
</template>  