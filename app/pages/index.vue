<script setup lang="ts">
const value = ref(66);

const options = ["about me", "education", "certs", "skills"]
const selectedNav = ref("about me")

const architecture = ["frontend", "backend", "database", "platform"]
const selectedArch = ref("")
</script>

<template>
  <div class="flex flex-col items-center pt-5">
    <div class="md:flex md:flex-row gap-4 md:gap-8 grid grid-cols-2 w-[95%] md:w-[80%]">
      <div v-for="option in options" :key="option" @pointerdown="selectedNav = option"
        class="p-1.5 pb-2 border border-white rounded-lg w-full">
        <label class="w-full font-mono font-extrabold md:text-3xl toggle-button"
          :class="{ 'toggle-button-active': selectedNav === option }">
          <input type="radio" v-model="selectedNav" :value="option" class="appearance-none">{{ option.toUpperCase() }}
        </label>
      </div>
    </div>

    <div class="text-xl outer">
      <div class="flex flex-row justify-center content-center inner">
        <div v-show="selectedNav === 'about me'" class="md:w-[90%]">
          <div class="flex flex-col items-center gap-4 w-full">
            <img src="https://htmlcolorcodes.com/assets/images/colors/light-blue-color-solid-background-1920x1080.png"
              alt="" class="rounded-full w-48 h-48 object-cover aspect-square" />
            <p class="text-center">
              Hello! I am Alex (a.k.a PancakePuncher).
              I enjoy coding, system administration, and generally all things technology.
              I made this page to showcase my work and track my educational accomplishments.
              Below you can get a glimpse of my current education and certifications.
            </p>
          </div>
        </div>

        <div v-show="selectedNav === 'education'" class="md:w-[90%]">
          <div class="flex flex-col items-center gap-4 w-full">
            <h1>Western Governers University</h1>
            <h2>B.S. Cybersecurity and Data Assurance</h2>
            <UProgress v-model="value" class="md:w-[70%]" size="2xl" />
            <h2>Est. Graduation by 2027</h2>
          </div>
        </div>

        <div v-show="selectedNav === 'certs'" class="md:w-[90%]">
          <div class="flex flex-col items-center">
            <div class="md:flex md:flex-row md:flex-wrap gap-5 grid grid-cols-2">
              <img src="/certlogos/aplus.png" alt="" class="rounded-full w-36 h-36 object-cover aspect-square" />
              <img src="/certlogos/nplus.png" alt="" class="rounded-full w-36 h-36 object-cover aspect-square" />
              <img src="/certlogos/splus.png" alt="" class="rounded-full w-36 h-36 object-cover aspect-square" />
              <img src="/certlogos/lec.png" alt="" class="w-36 h-36" />
              <img src="/certlogos/itil4.png" alt="" class="w-36 h-36" />
              <img src="/certlogos/awsccp.png" alt="" class="w-36 h-36" />
              <img src="/certlogos/googledata.png" alt="" class="w-36 h-36" />
            </div>
          </div>
        </div>

        <div v-show="selectedNav === 'skills'" class="flex md:flex-row flex-col md:w-[90%]">
          <div class="scale-75 scene">
            <div class="top-[-3.5rem] stack">
              <template v-for="arch in architecture" :key="arch">
                <div class="slice" :class="[arch, { 'slice-active': selectedArch === arch }]"
                  @click="selectedArch = arch">
                  <p class="slice-text">{{ arch.toUpperCase() }}</p>
                </div>
              </template>
            </div>
          </div>
          <div class="w-full md:w-[75%]">
            <div v-show="selectedArch === 'frontend'" class="bg-[#E0AAFF] rounded-2xl h-full">
              Under Construction
            </div>
            <div v-show="selectedArch === 'backend'" class="bg-[#C77DFF] rounded-2xl h-full">
              Under Construction
            </div>
            <div v-show="selectedArch === 'database'" class="bg-[#9D4EDD] rounded-2xl h-full">
              Under Construction
            </div>
            <div v-show="selectedArch === 'platform'" class="bg-[#B497D6] rounded-2xl h-full">
              Under Construction
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>