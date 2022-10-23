<script setup lang="ts">
import type { Montre } from "@/types";

withDefaults(defineProps<Montre>(), {
    bracelet: "white",
    RectInte: "white",
    RectExte: "white",
    CircleInte: "white",
    CircleExte: "white",
    forme: "rectangle",
});
</script>

<template>
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 476.37 711">
    <defs>
        <symbol id="Chargement_4" viewBox="0 0 35.92 35.92">
            <g>
                <path d="M16.83,0c-4.12,.26-7.87,1.9-10.78,4.47l7.46,7.46c.96-.71,2.09-1.19,3.32-1.37V0Z" fill="#bbbdbf" />
                <path d="M0,19.09c.25,4.12,1.9,7.87,4.46,10.78l7.46-7.46c-.71-.96-1.19-2.09-1.37-3.32H0Z" fill="#929497" />
                <path d="M4.47,6.06C1.9,8.97,.25,12.71,0,16.84H10.55c.19-1.23,.67-2.36,1.38-3.32L4.47,6.06Z" fill="#a6a8ab" />
                <path d="M29.87,4.47C26.95,1.9,23.21,.26,19.08,0V10.56c1.23,.18,2.36,.67,3.32,1.37l7.46-7.46Z" fill="#231f20" />
                <path d="M24,22.41l7.46,7.46c2.57-2.91,4.21-6.66,4.46-10.78h-10.55c-.19,1.23-.67,2.36-1.37,3.32Z" fill="#58595b" />
                <path d="M35.92,16.84c-.25-4.12-1.9-7.87-4.47-10.78l-7.46,7.46c.71,.96,1.19,2.09,1.37,3.32h10.55Z" fill="#404041" />
                <path d="M6.06,31.46c2.91,2.57,6.66,4.21,10.78,4.46v-10.55c-1.23-.19-2.36-.67-3.32-1.37l-7.46,7.46Z" fill="#808284" />
                <path d="M19.08,35.92c4.12-.25,7.87-1.9,10.78-4.46l-7.46-7.46c-.96,.71-2.09,1.19-3.32,1.38v10.55Z" fill="#6d6e70" />
            </g>
        </symbol>
        <radialGradient id="radial-gradient" cx="1027.95" cy="-22914.37" fx="1027.95" fy="-22914.37" r="28.95" gradientTransform="translate(-1141.66 5795.64) scale(1.14 .25)" gradientUnits="userSpaceOnUse">
            <stop offset=".1" stop-color="#dadada" stop-opacity=".95" />
            <stop offset="1" stop-color="#fff" stop-opacity="0" />
        </radialGradient>
        <radialGradient id="radial-gradient-2" cx="33.03" cy="57.46" fx="33.03" fy="57.46" r="34.11" gradientTransform="translate(-.04)" gradientUnits="userSpaceOnUse">
            <stop offset="0" stop-color="#fff" />
            <stop offset="1" stop-color="#b1bfc7" />
        </radialGradient>
        <radialGradient id="radial-gradient-3" cx="21.19" cy="39.89" fx="21.19" fy="39.89" r="11.71" gradientTransform="translate(-.04)" gradientUnits="userSpaceOnUse">
            <stop offset=".11" stop-color="#fff" />
            <stop offset=".95" stop-color="#000" />
        </radialGradient>
        <radialGradient id="radial-gradient-4" cx="18.46" cy="19.69" fx="18.46" fy="19.69" r="2.81" xlink:href="#radial-gradient-3" />
        <radialGradient id="radial-gradient-5" cx="17.69" cy="42.76" fx="17.69" fy="42.76" r="4.36" xlink:href="#radial-gradient-3" />
        <radialGradient id="radial-gradient-6" cx="37.41" cy="14.67" fx="37.41" fy="14.67" r="5.26" xlink:href="#radial-gradient-3" />
        <radialGradient id="radial-gradient-7" cx="35.52" cy="25.67" fx="35.52" fy="25.67" r="1.08" xlink:href="#radial-gradient-3" />
        <radialGradient id="radial-gradient-8" cx="24.86" cy="27.59" fx="24.86" fy="27.59" r="2.22" xlink:href="#radial-gradient-3" />
        <radialGradient id="radial-gradient-9" cx="49.27" cy="30.89" fx="49.27" fy="30.89" r="15.41" xlink:href="#radial-gradient-3" />
        <linearGradient id="linear-gradient" x1="-560.65" y1="-583.25" x2="-597.7" y2="-546.2" gradientTransform="translate(576.43 564.93) rotate(-2.14) scale(.96) skewX(-4.27)" gradientUnits="userSpaceOnUse">
            <stop offset="0" stop-color="#000" />
            <stop offset=".6" stop-color="#fff" />
            <stop offset=".9" stop-color="#000" />
        </linearGradient>
        <linearGradient id="linear-gradient-2" x1="18959.75" y1="12535.23" x2="18922.7" y2="12572.28" gradientTransform="translate(17701.4 10911.04) rotate(-110.35) scale(1.06 -1.02) skewX(-15.87)" xlink:href="#linear-gradient" />
        <linearGradient id="linear-gradient-3" x1="18623.39" y1="5115.24" x2="18586.34" y2="5152.29" gradientTransform="translate(5598.92 17806.05) rotate(-123.32) skewX(-8.29)" xlink:href="#linear-gradient" />
        <linearGradient id="linear-gradient-4" x1="-2847" y1="5755.36" x2="-2884.06" y2="5792.42" gradientTransform="translate(5609.73 -3209.48) rotate(33.53)" xlink:href="#linear-gradient" />
        <linearGradient id="linear-gradient-5" x1="2577.81" y1="14915.21" x2="2540.76" y2="14952.26" gradientTransform="translate(22784.55 -3726.23) rotate(107) scale(1.46 1.38) skewX(16.63)" xlink:href="#linear-gradient" />
        <linearGradient id="linear-gradient-6" x1="8121.22" y1="-1938.34" x2="8084.16" y2="-1901.29" gradientTransform="translate(-4888.73 8321.4) rotate(-45.99) scale(1.16) skewX(.43)" xlink:href="#linear-gradient" />
        <linearGradient id="linear-gradient-7" x1="17700.74" y1="10160.4" x2="17663.69" y2="10197.46" gradientTransform="translate(12704.2 19911.33) rotate(-150.37) scale(1.09 1.08) skewX(7.63)" xlink:href="#linear-gradient" />
        <linearGradient id="linear-gradient-8" x1="-3640.78" y1="-15472.94" x2="-3640.78" y2="-15392.38" gradientTransform="translate(2538.31 5136.51) scale(.69 .33)" gradientUnits="userSpaceOnUse">
            <stop offset="0" stop-color="#fff" />
            <stop offset="1" stop-color="#000" />
        </linearGradient>
        <symbol id="Orb_-_Gris" viewBox="0 0 66.17 72">
            <g>
                <path d="M66.17,64.76c0,4-14.81,7.24-33.09,7.24S0,68.76,0,64.76s14.81-7.24,33.09-7.24,33.09,3.24,33.09,7.24Z" fill="url(#radial-gradient)" mix-blend-mode="multiply" />
                <g>
                    <g>
                        <path d="M33.09,65.92C14.98,65.92,.25,51.19,.25,33.09S14.98,.25,33.09,.25s32.84,14.73,32.84,32.84-14.73,32.84-32.84,32.84Z" fill="url(#radial-gradient-2)" />
                        <path d="M33.09,.5c17.97,0,32.59,14.62,32.59,32.59s-14.62,32.59-32.59,32.59S.5,51.06,.5,33.09,15.12,.5,33.09,.5m0-.5C14.81,0,0,14.81,0,33.09s14.81,33.09,33.09,33.09,33.09-14.81,33.09-33.09S51.36,0,33.09,0h0Z" fill="#8c98a0" />
                    </g>
                    <path d="M32.86,39.89c0,6.47-5.24,11.71-11.71,11.71s-11.71-5.24-11.71-11.71,5.24-11.71,11.71-11.71,11.71,5.24,11.71,11.71Z" fill="url(#radial-gradient-3)" mix-blend-mode="screen" opacity=".6" />
                    <path d="M21.23,19.7c0,1.55-1.26,2.81-2.81,2.81s-2.81-1.26-2.81-2.81,1.26-2.81,2.81-2.81,2.81,1.26,2.81,2.81Z" fill="url(#radial-gradient-4)" mix-blend-mode="screen" opacity=".8" />
                    <path d="M22.01,42.77c0,2.41-1.95,4.36-4.36,4.36s-4.36-1.95-4.36-4.36,1.95-4.37,4.36-4.37,4.36,1.96,4.36,4.37Z" fill="url(#radial-gradient-5)" mix-blend-mode="screen" opacity=".8" />
                    <path d="M42.63,14.67c0,2.91-2.36,5.26-5.26,5.26s-5.26-2.36-5.26-5.26,2.35-5.26,5.26-5.26,5.26,2.36,5.26,5.26Z" fill="url(#radial-gradient-6)" mix-blend-mode="screen" opacity=".8" />
                    <path d="M36.56,25.67c0,.6-.48,1.08-1.08,1.08s-1.08-.48-1.08-1.08,.48-1.08,1.08-1.08,1.08,.48,1.08,1.08Z" fill="url(#radial-gradient-7)" mix-blend-mode="screen" />
                    <path d="M27.04,27.59c0,1.23-1,2.22-2.22,2.22s-2.22-1-2.22-2.22,1-2.22,2.22-2.22,2.22,1,2.22,2.22Z" fill="url(#radial-gradient-8)" mix-blend-mode="screen" />
                    <path d="M64.65,30.89c0,8.51-6.9,15.41-15.42,15.41s-15.41-6.9-15.41-15.41,6.9-15.42,15.41-15.42,15.42,6.9,15.42,15.42Z" fill="url(#radial-gradient-9)" mix-blend-mode="screen" opacity=".8" />
                    <path d="M36.3,37.52c9.68-9.88,20.57-15.03,24.88-11.9-.12-.16-.24-.3-.38-.44-3.95-3.87-15.29,1.29-25.33,11.53-10.04,10.24-14.97,21.68-11.01,25.55,.14,.14,.29,.26,.45,.38-3.21-4.24,1.72-15.23,11.4-25.11Z" fill="url(#linear-gradient)" mix-blend-mode="screen" />
                    <path d="M39.22,35.14c4.81-15.94,4.89-30.16,.29-32.57,.19,.02,.38,.05,.56,.11,5.12,1.58,5.23,16.26,.24,32.79-4.99,16.53-13.19,28.64-18.31,27.06-.18-.06-.36-.13-.52-.22,5.14,.6,12.94-11.23,17.75-27.17Z" fill="url(#linear-gradient-2)" mix-blend-mode="screen" opacity=".4" />
                    <path d="M31.64,48.26c-14.33-3.92-24.94-11.14-24.36-16.44-.08,.18-.15,.36-.2,.55-1.46,5.34,9.4,12.96,24.26,17.02,14.86,4.06,28.08,3.02,29.54-2.31,.05-.19,.08-.38,.1-.58-2.2,4.85-15.01,5.68-29.34,1.76Z" fill="url(#linear-gradient-3)" mix-blend-mode="screen" opacity=".7" />
                    <path d="M31.25,16.1c13.52-2.89,25.51-.85,27.46,4.54-.01-.21-.04-.42-.08-.63-1.25-5.83-13.62-8.13-27.64-5.14-14.02,2.99-24.38,10.15-23.14,15.98,.04,.21,.11,.41,.18,.61-.42-5.71,9.7-12.46,23.22-15.35Z" fill="url(#linear-gradient-4)" mix-blend-mode="screen" />
                    <path d="M45.39,23.73c10.19,13.38,12.59,28.83,5.68,35.29,.29-.18,.59-.37,.87-.59,7.87-5.99,5.68-22.1-4.88-35.97C36.49,8.59,21.54,2.2,13.68,8.19c-.28,.21-.54,.44-.79,.68,8.06-4.94,22.32,1.48,32.51,14.86Z" fill="url(#linear-gradient-5)" mix-blend-mode="screen" />
                    <path d="M17.91,34c-.5-15.96,4.32-29.15,10.89-30.27-.24-.03-.49-.04-.73-.03-6.93,.22-12.13,13.8-11.62,30.34,.52,16.54,6.56,29.78,13.49,29.56,.25,0,.49-.04,.73-.08-6.62-.7-12.26-13.57-12.75-29.53Z" fill="url(#linear-gradient-6)" mix-blend-mode="screen" />
                    <path d="M42.24,56.76c-13.22,4.76-25.79,3.72-28.78-2.21,.05,.24,.12,.47,.2,.71,2.35,6.53,15.37,7.82,29.07,2.88,13.71-4.94,22.91-14.23,20.56-20.75-.08-.23-.18-.45-.29-.67,1.48,6.47-7.55,15.29-20.77,20.04Z" fill="url(#linear-gradient-7)" mix-blend-mode="screen" opacity=".7" />
                    <g mix-blend-mode="screen">
                        <path d="M52.85,14.2c0,5.55-8.85,10.06-19.77,10.06S13.32,19.75,13.32,14.2,22.17,4.14,33.09,4.14s19.77,4.5,19.77,10.06Z" fill="url(#linear-gradient-8)" />
                    </g>
                </g>
            </g>
        </symbol>
        <linearGradient id="linear-gradient-9" x1="16.51" y1="6.01" x2="34.28" y2="48.69" gradientUnits="userSpaceOnUse">
            <stop offset="0" stop-color="#fff" />
            <stop offset="1" stop-color="#d4d6d7" />
        </linearGradient>
        <linearGradient id="linear-gradient-10" x1="38.66" y1="42.26" x2="14.7" y2="12.42" gradientUnits="userSpaceOnUse">
            <stop offset="0" stop-color="#fff" />
            <stop offset="1" stop-color="#b8babc" />
        </linearGradient>
        <radialGradient id="radial-gradient-10" cx="20.17" cy="17.26" fx="20.17" fy="17.26" r="15.36" gradientTransform="translate(0)" xlink:href="#radial-gradient-2" />
        <linearGradient id="linear-gradient-11" x1="21.73" y1="20.07" x2="32.55" y2="38.74" gradientUnits="userSpaceOnUse">
            <stop offset="0" stop-color="#fff" />
            <stop offset="1" stop-color="#b7c6ce" />
        </linearGradient>
        <symbol id="Puce_6_-_Gris" viewBox="0 0 48 48">
            <g>
                <g>
                    <path d="M24,47.75C10.9,47.75,.25,37.09,.25,24S10.9,.25,24,.25s23.75,10.65,23.75,23.75-10.65,23.75-23.75,23.75Z" fill="url(#linear-gradient-9)" />
                    <path d="M24,.5c12.96,0,23.5,10.54,23.5,23.5s-10.54,23.5-23.5,23.5S.5,36.96,.5,24,11.04,.5,24,.5m0-.5C10.74,0,0,10.74,0,24s10.74,24,24,24,24-10.74,24-24S37.26,0,24,0h0Z" fill="#b2b4b7" />
                </g>
                <path d="M41.5,24c0,9.67-7.83,17.5-17.5,17.5S6.5,33.67,6.5,24,14.33,6.5,24,6.5s17.5,7.83,17.5,17.5Z" fill="url(#linear-gradient-10)" />
                <g>
                    <path d="M24,38.5c-8,0-14.5-6.51-14.5-14.5s6.5-14.5,14.5-14.5,14.5,6.5,14.5,14.5-6.5,14.5-14.5,14.5Z" fill="url(#radial-gradient-10)" />
                    <path d="M24,10c7.72,0,14,6.28,14,14s-6.28,14-14,14-14-6.28-14-14,6.28-14,14-14m0-1c-8.29,0-15,6.71-15,15s6.71,15,15,15,15-6.72,15-15-6.72-15-15-15h0Z" fill="#8c98a0" />
                </g>
                <g mix-blend-mode="multiply" opacity=".8">
                    <path d="M32.91,11.95c.09,.67,.16,1.35,.16,2.05,0,8.28-6.71,15-15,15-3.34,0-6.41-1.11-8.91-2.95,1,7.31,7.26,12.95,14.84,12.95,8.28,0,15-6.72,15-15,0-4.94-2.4-9.32-6.09-12.05Z" fill="url(#linear-gradient-11)" />
                </g>
            </g>
        </symbol>
    </defs>
    <g id="bracelet">
        <path id="BraceBack" d="M134.85,27.79S187.03,7.5,233.41,8.95s95.65,15.94,95.65,15.94c0,0-28.99,271.01-26.09,349.28s27.54,307.25,27.54,307.25c0,0-47.83,21.74-92.75,18.84s-97.1-17.39-97.1-17.39c0,0,23.88-239.13,23.88-333.33S134.85,27.79,134.85,27.79Z" fill="#fff" stroke="#000" stroke-miterlimit="10" stroke-width=".5" />
        <path id="BraceUp" d="M94.27,153.87s39.13-72.46,34.78-126.09c0,0,17.39-27.54,102.9-27.54s110.14,18.84,110.14,18.84c0,0,14.8,110.14,35.09,130.43,0,0-95.96,18.84-148.13,18.84s-134.78-14.49-134.78-14.49Z" fill="#fff" stroke="#000" stroke-miterlimit="10" stroke-width=".5" />
        <path id="BraceDown" d="M379.58,562.21s-41.86,70.92-39.56,124.67c0,0-18.43,26.85-103.87,23.59-85.45-3.26-109.35-23.02-109.35-23.02,0,0-10.59-110.63-30.09-131.68,0,0,96.6-15.17,148.74-13.18,52.14,1.99,134.13,19.62,134.13,19.62Z" fill="#fff" stroke="#000" stroke-miterlimit="10" stroke-width=".5" />
    </g>
    <g id="boitier">
        <rect id="RectExte" x="43.87" y="130.63" width="379.91" height="453.62" rx="80.8" ry="80.8" fill="#fff" stroke="#000" stroke-miterlimit="10" stroke-width=".5" />
        <rect id="RectInte" x="63.14" y="156.05" width="341.37" height="402.78" rx="72.17" ry="72.17" fill="#fff" stroke="#000" stroke-miterlimit="10" stroke-width=".5" />
        <rect id="RectScreen" x="82.05" y="172.53" width="303.55" height="369.83" rx="65.21" ry="65.21" fill="#b3b3b3" stroke="#000" stroke-miterlimit="10" stroke-width=".5" />
    </g>
    <g id="boitier_rond">
        <g id="CircleExte">
            <path d="M238.18,591.64c-63.59,0-123.37-24.76-168.33-69.73C24.89,476.95,.12,417.17,.12,353.58s24.76-123.37,69.73-168.33c44.96-44.96,104.74-69.73,168.33-69.73s123.37,24.76,168.33,69.73c44.96,44.96,69.73,104.74,69.73,168.33s-24.76,123.37-69.73,168.33c-44.96,44.96-104.75,69.73-168.33,69.73Z" fill="#fff" />
            <path d="M238.18,115.65c32.12,0,63.28,6.29,92.61,18.7,28.33,11.98,53.78,29.14,75.63,50.99,21.85,21.85,39.01,47.3,50.99,75.63,12.41,29.33,18.7,60.49,18.7,92.61s-6.29,63.28-18.7,92.61c-11.98,28.33-29.14,53.78-50.99,75.63-21.85,21.85-47.3,39.01-75.63,50.99-29.33,12.41-60.49,18.7-92.61,18.7s-63.28-6.29-92.61-18.7c-28.33-11.98-53.78-29.14-75.63-50.99-21.85-21.85-39.01-47.3-50.99-75.63C6.54,416.87,.25,385.71,.25,353.58s6.29-63.28,18.7-92.61c11.98-28.33,29.14-53.78,50.99-75.63,21.85-21.85,47.3-39.01,75.63-50.99,29.33-12.41,60.49-18.7,92.61-18.7m0-.25C106.64,115.4,0,222.04,0,353.58s106.64,238.18,238.18,238.18,238.18-106.64,238.18-238.18S369.73,115.4,238.18,115.4h0Z" />
        </g>
        <g id="CircleInte">
            <path d="M238.18,573.97c-58.87,0-114.21-22.92-155.83-64.55S17.8,412.45,17.8,353.58s22.92-114.21,64.55-155.83,96.97-64.55,155.83-64.55,114.21,22.92,155.83,64.55,64.55,96.97,64.55,155.83-22.92,114.21-64.55,155.83-96.97,64.55-155.83,64.55Z" fill="#fff" />
            <path d="M238.18,133.33c29.73,0,58.58,5.82,85.73,17.31,26.23,11.09,49.78,26.98,70.01,47.2,20.23,20.23,36.11,43.78,47.2,70.01,11.49,27.15,17.31,56,17.31,85.73s-5.82,58.58-17.31,85.73c-11.09,26.23-26.98,49.78-47.2,70.01s-43.78,36.11-70.01,47.2c-27.15,11.49-56,17.31-85.73,17.31s-58.58-5.82-85.73-17.31c-26.23-11.09-49.78-26.98-70.01-47.2-20.23-20.23-36.11-43.78-47.2-70.01-11.49-27.15-17.31-56-17.31-85.73s5.82-58.58,17.31-85.73c11.09-26.23,26.98-49.78,47.2-70.01,20.23-20.23,43.78-36.11,70.01-47.2,27.15-11.49,56-17.31,85.73-17.31m0-.25c-121.78,0-220.51,98.72-220.51,220.51s98.72,220.51,220.51,220.51,220.51-98.72,220.51-220.51-98.72-220.51-220.51-220.51h0Z" />
        </g>
        <circle id="CircleScreen" cx="238.18" cy="353.58" r="194.53" fill="#b3b3b3" stroke="#000" stroke-miterlimit="10" stroke-width=".5" />
    </g>
    <g id="ecran">
        <text transform="translate(103.58 329.78)" font-family="ArialMT, Arial" font-size="98" letter-spacing="-.11em">
            <tspan x="0" y="0">1O:1O</tspan>
        </text>
        <text transform="translate(152.89 222.03)" font-family="ArialMT, Arial" font-size="30" letter-spacing="-.01em">
            <tspan x="0" y="0" xml:space="preserve">Lun.  24 oct.</tspan>
        </text>
        <text transform="translate(178.96 511.45)" font-family="ArialMT, Arial" font-size="30" letter-spacing="-.01em">
            <tspan x="0" y="0">TiK•TaK</tspan>
        </text>
        <use width="35.92" height="35.92" transform="translate(292.7 396.86) scale(1.22)" xlink:href="#Chargement_4" />
        <use width="66.17" height="72" transform="translate(132.27 395.79) scale(.64)" xlink:href="#Orb_-_Gris" />
        <use width="48" height="48" transform="translate(212.64 394.86)" xlink:href="#Puce_6_-_Gris" />
    </g>
</svg>
</template>