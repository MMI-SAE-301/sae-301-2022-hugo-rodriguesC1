<script setup lang="ts">

import {user, supabase} from '../supabase'
import type { Montre } from "@/types";
import { colors } from "@/types";
import { onMounted, ref } from "vue";
import { useRouter } from "vue-router";
import MontreConnectee from "../components/MontreConnectee.vue";

const router = useRouter();

const listeMontre = ref()
const listeMontreCommandee = ref()
listeMontreCommandee.value=[]


async function getMontre() {
    const { error, data } = await supabase
    .from('montre')
    .select('*')
    .eq('user_id', supabase.auth.user().id)
    .or('montre_commandee.eq.false,montre_commandee.is.null')
    console.log(data)
    listeMontre.value=data
}
async function getMontreC() {
    const { error, data } = await supabase
    .from('montre')
    .select('*')
    .eq('user_id', supabase.auth.user().id)
    .eq("montre_commandee", true)
    console.log(data)
    listeMontreCommandee.value=data
}

async function signout() {
    const { error } = await supabase.auth.signOut()
    router.push('/')
}

onMounted(()=>{
    getMontre()
    getMontreC()
})



</script>

<template>
    <div class="grid grid-cols-10 gap-[30px] row-auto lg:grid-cols-8 pb-72">
        <div class="font-poppins col-span-2 mt-32 col-start-2">
            <h1 class="font-poppins font-medium text-5xl">{{user.user_metadata.full_name}}</h1>
            <div class="text-xl mt-12 font-normal">{{user.email}}</div>
            <h2 class="font-medium text-3xl mt-12">Mes créations</h2>    
        </div>
        <button class="flex items-center justify-center bg-rose-200 text-zinc-700 text-xl mt-32 uppercase col-start-7 h-16" v-if="user" @click="signout">
            Se déconnecter
        </button>
        <div class="row-start-2 col-start-2 col-span-6 bg-white h-96 w-full overflow-y-scroll scrollbar-hide dark:bg-black">
            <div class="grid grid-flow-col auto-cols-max grid-rows-1 gap-28 h-full px-20 py-12 ">
                <RouterLink :to="{ name: 'montre-edit-id', params: { id: montre.montre_id } }"  v-for="montre in listeMontre" :key="montre.montre_id">
                    <MontreConnectee v-bind="montre" class="h-full w-full hover:animate-pulse"/>
                </RouterLink>
                <div v-for="montreC in listeMontreCommandee" :key="montreC.montre_id" class="relative">
                    <MontreConnectee  v-bind="montreC" class="h-full w-full opacity-40 "/>
                    <div class="font-poppins text-xl font-normal absolute flex justify-center -bottom-10 left-0 right-0">Commandée</div>
                </div>
            </div>

        </div>
    </div>
</template>

