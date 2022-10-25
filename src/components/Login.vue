<script setup lang="ts">
import { supabase, user } from '../supabase';
import LoginButton from './LoginButton.vue';
</script>
<template>
    <div class="col-span-2 col-start-5 mt-36">
        <LoginButton :logo="'/src/assets/gLogo.svg'" :name="'Google'" @pointerdown="supabase.auth.signIn({provider: 'google'})"/>
        <LoginButton :logo="'/src/assets/fbLogo.svg'" :name="'Facebook'" @pointerdown="supabase.auth.signIn({provider: 'facebook'})" class="mt-9"/>

    </div>
</template>  