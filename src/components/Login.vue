<script setup lang="ts">
import { supabase, user } from '../supabase';
import { useRouter } from "vue-router";
import LoginButton from './LoginButton.vue';

const router = useRouter();

async function loginG() {
    supabase.auth.signIn({provider: 'google'}, {redirectTo:'http://sae301.hrodrigues.fr/moncompte'})

}
async function loginF() {
    supabase.auth.signIn({provider: 'facebook'}, {redirectTo:'http://sae301.hrodrigues.fr/moncompte'})

}

</script>
<template>
    <div class="col-span-2 col-start-5 mt-36">
        <LoginButton src="/assets/gLogo.png" :name="'Google'" @click="loginG"/>
        <LoginButton src="/assets/fbLogo.png" :name="'Facebook'" @click="loginF" class="mt-9"/>

    </div>
</template>  