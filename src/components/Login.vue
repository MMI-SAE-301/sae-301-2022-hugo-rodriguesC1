<script setup lang="ts">
import { supabase, user } from '../supabase';
</script>
<template>
<div>
    <button class="p-3 m-3 bg-green-800 text-white" @pointerdown="supabase.auth.signIn({provider: 'google'})">
        Se connecter avec Google
    </button>
    <button class="p-3 m-3 bg-green-800 text-white" @pointerdown="supabase.auth.signIn({provider: 'facebook'})">
        Se connecter avec Facebook
    </button>
</div>
</template>  