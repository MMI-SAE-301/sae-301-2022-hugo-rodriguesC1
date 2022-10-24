<script setup lang="ts">
import type { Montre } from "@/types";
import { ref } from "@vue/reactivity";

withDefaults(defineProps<Montre>(), {
    bracelet: "white",
    Ecran1: "white",
    Boitier1: "white",
    Ecran2: "white",
    Boitier2: "white",
    forme: "Ovale",
});


</script>

<template>
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 436.64 711">
    <g id="bracelet">
        <path id="BraceBack" d="M126.96,27.79S179.14,7.5,225.51,8.95s95.65,15.94,95.65,15.94c0,0-28.99,271.01-26.09,349.28s27.54,307.25,27.54,307.25c0,0-47.83,21.74-92.75,18.84s-97.1-17.39-97.1-17.39c0,0,23.88-239.13,23.88-333.33S126.96,27.79,126.96,27.79Z" :fill='bracelet' stroke="#000" stroke-miterlimit="10" stroke-width=".5" />
        <path id="BraceUp" d="M90.95,157.1S125.51,81.41,121.16,27.79c0,0,17.39-27.54,102.9-27.54s110.14,18.84,110.14,18.84c0,0,9.69,115.57,29.98,135.86,0,0-90.85,13.42-143.02,13.42s-130.22-11.27-130.22-11.27Z" :fill='bracelet' stroke="#000" stroke-miterlimit="10" stroke-width=".5" />
        <path id="BraceDown" d="M359.24,542.41s-29.41,90.72-27.11,144.47c0,0-18.43,26.85-103.87,23.59-85.45-3.26-109.35-23.02-109.35-23.02,0,0-4.48-132.37-23.98-153.42,0,0,90.5,6.57,142.63,8.56,52.14,1.99,121.68-.18,121.68-.18Z" :fill='bracelet' stroke="#000" stroke-miterlimit="10" stroke-width=".5" />
    </g>
    <g id="boitier" v-if="forme == 'Dali'">
        <path id="Boitier1" d="M238.72,609.41s-128.19,37.78-215.91-134.91C-64.91,301.8,123.38,84.25,241.52,31.62c118.14-52.63,109.95,164.47,168.43,236.63,58.48,72.15,7.77,258.41-35.09,292.97-42.86,34.57-136.14,48.19-136.14,48.19Z" :fill="Boitier1" stroke="#000" stroke-miterlimit="10" stroke-width=".5" />
        <path id="Ecran1" d="M234.91,576.3s-110.71,32.63-186.46-116.51C-27.31,310.65,135.3,122.77,237.33,77.31c102.03-45.45,94.96,142.04,145.46,204.35,50.51,62.31,6.71,223.16-30.3,253.02s-117.58,41.62-117.58,41.62Z" :fill="Ecran1" stroke="#000" stroke-miterlimit="10" stroke-width=".5" />
    </g>
    <g id="boitier_rond" v-if="forme == 'Ovale'">
        <ellipse id="Boitier2" cx="230.26" cy="343" rx="192.34" ry="300.26" :fill="Boitier2" stroke="#000" stroke-miterlimit="10" stroke-width=".5" />
        <ellipse id="Ecran2" cx="230.26" cy="343" rx="169.19" ry="271.66" :fill="Ecran2" stroke="#000" stroke-miterlimit="10" stroke-width=".5" />
    </g>
    <g id="ecran">
        <text transform="translate(95.68 329.78)" font-family="ArialMT, Arial" font-size="98" letter-spacing="-.11em">
            <tspan x="0" y="0">1O:1O</tspan>
        </text>
        <text transform="translate(145 222.03)" font-family="ArialMT, Arial" font-size="30" letter-spacing="-.01em">
            <tspan x="0" y="0" xml:space="preserve">Lun.  24 oct.</tspan>
        </text>
        <text transform="translate(172.15 511.45)" font-family="ArialMT, Arial" font-size="30" letter-spacing="-.01em">
            <tspan x="0" y="0">TiK TaK</tspan>
        </text>
        <path d="M230.09,406.92c-13.76-8.68-27.51-17.36-41.27-26.04-5.46-3.44-10.48,5.21-5.05,8.63,13.76,8.68,27.51,17.36,41.27,26.04,5.46,3.44,10.48-5.21,5.05-8.63h0Z" />
        <path d="M228.32,412.53c2.79-1.72,5.58-3.44,8.37-5.17,6.7-4.14,13.4-8.28,20.1-12.41,8.15-5.03,16.29-10.06,24.44-15.09,7.01-4.33,14.03-8.66,21.04-12.99,3.41-2.1,6.91-4.11,10.25-6.33,.05-.03,.1-.06,.15-.09,1.64-1.01,.13-3.61-1.51-2.59-2.79,1.72-5.58,3.44-8.37,5.17-6.7,4.14-13.4,8.28-20.1,12.41-8.15,5.03-16.29,10.06-24.44,15.09-7.01,4.33-14.03,8.66-21.04,12.99-3.41,2.1-6.91,4.11-10.25,6.33-.05,.03-.1,.06-.15,.09-1.64,1.01-.13,3.61,1.51,2.59h0Z" />
    </g>
</svg>
</template>