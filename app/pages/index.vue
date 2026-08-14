<script setup lang="ts">

const value = ref(66);

const options = ["about me", "education", "certifications", "skills"]
const selected = ref("about me")

</script>

<template>
  <div class="flex flex-col items-center pt-5">
    <div class="grid grid-cols-2 md:flex md:flex-row gap-5">
      <div v-for="option in options" :key="option" @pointerdown="selected = option"
        class="border border-white p-1 pb-2">
        <label class="toggle-button w-full" :class="{ 'toggle-button-active': selected === option }">
          <input type="radio" v-model="selected" :value="option" class="appearance-none">{{ option.toUpperCase() }}
        </label>
      </div>
    </div>

    <div class="outer text-xl">
      <div class="inner flex flex-row content-center justify-center">
        <div v-show="selected === 'about me'" class="md:w-[75%]">
          <div class="flex flex-col items-center w-full gap-4">
            <img src="https://htmlcolorcodes.com/assets/images/colors/light-blue-color-solid-background-1920x1080.png"
              alt="" class="h-48 w-48 rounded-full object-cover aspect-square" />
            <p class="text-center">Hello! I am Alex (a.k.a PancakePuncher).
              I enjoy coding, system administration, and generally all things technology.
              I made this page to showcase my work and track my educational accomplishments.
              Below you can get a glimpse of my current education and certifications.
            </p>
          </div>
        </div>

        <div v-show="selected === 'education'" class="md:w-[75%]">
          <div class="flex flex-col items-center w-full gap-4">
            <h1>Western Governers University</h1>
            <h2>B.S. Cybersecurity and Data Assurance</h2>
            <UProgress v-model="value" class="w-[50%]" size="lg" />
            <h2>Est. Graduation by 2027</h2>
          </div>
        </div>

        <div v-show="selected === 'certifications'" class="md:w-[75%]">
          <div class="flex flex-col items-center">
            <div class="grid grid-cols-2 md:flex md:flex-row md:flex-wrap gap-5">
              <img src="/certlogos/aplus.png" alt="" class="h-36 w-36 rounded-full object-cover aspect-square" />
              <img src="/certlogos/nplus.png" alt="" class="h-36 w-36 rounded-full object-cover aspect-square" />
              <img src="/certlogos/splus.png" alt="" class="h-36 w-36 rounded-full object-cover aspect-square" />
              <img src="/certlogos/lec.png" alt="" class="h-36 w-36" />
              <img src="/certlogos/itil4.png" alt="" class="h-36 w-36" />
              <img src="/certlogos/awsccp.png" alt="" class="h-36 w-36" />
              <img src="/certlogos/googledata.png" alt="" class="h-36 w-36" />
            </div>
          </div>
        </div>

        <div v-show="selected === 'skills'" class="md:w-[75%]">Under Construction</div>
      </div>
    </div>
  </div>
</template>
