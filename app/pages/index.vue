<script setup lang="ts">
const value = ref(66);
</script>

<template>
  <div class="flex flex-col items-center pt-15 text-xl">
    <img
      src="https://htmlcolorcodes.com/assets/images/colors/light-blue-color-solid-background-1920x1080.png"
      alt=""
      class="h-48 w-48 rounded-full object-cover aspect-square"
    />
    <div class="flex flex-col items-center w-full pt-15 gap-4">
      <h1 class="bg-blue-600 pt-2 pb-2 pl-5 pr-5 rounded-full text-3xl">About Me</h1>
      <p class="text-center w-[75%]">Hello! I am Alex (a.k.a PancakePuncher). 
        I enjoy coding, system administration, and generally all things technology. 
        I made this page to showcase my work and track my educational accomplishments. 
        Below you can get a glimpse of my current education and certifications.
      </p>
    </div>
    <div class="flex flex-col items-center w-full pt-15 gap-4">
      <h1 class="bg-blue-600 pt-2 pb-2 pl-5 pr-5 rounded-full text-3xl">Education</h1>
        <h1>Western Governers University</h1>
        <h2>B.S. Cybersecurity and Data Assurance</h2>
        <UProgress v-model="value" class="w-[50%]" size="lg" />
        <h2>Est. Graduation by 2027</h2>
    </div>
    <div class="flex flex-col items-center pt-15 gap-3.5">
      <h1 class="bg-blue-600 pt-2 pb-2 pl-5 pr-5 rounded-full text-3xl text-center">Current/Active Certifications</h1>
      <div class="flex flex-col md:flex-row flex-wrap gap-5 pt-2">
        <img
          src="/certlogos/aplus.png"
          alt=""
          class="h-36 w-36 rounded-full object-cover aspect-square"
        />
        <img
          src="/certlogos/nplus.png"
          alt=""
          class="h-36 w-36 rounded-full object-cover aspect-square"
        />
        <img
          src="/certlogos/splus.png"
          alt=""
          class="h-36 w-36 rounded-full object-cover aspect-square"
        />
        <img src="/certlogos/lec.png" alt="" class="h-36 w-36" />
        <img src="/certlogos/itil4.png" alt="" class="h-36 w-36" />
        <img src="/certlogos/awsccp.png" alt="" class="h-36 w-36" />
        <img src="/certlogos/googledata.png" alt="" class="h-36 w-36" />
      </div>
    </div>
  </div>
</template>
