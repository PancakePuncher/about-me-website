<script setup lang="ts">
const value = ref(50);
</script>

<template>
  <div class="flex flex-col items-center pt-15 text-xl">
    <img
      src="https://htmlcolorcodes.com/assets/images/colors/light-blue-color-solid-background-1920x1080.png"
      alt=""
      class="h-48 w-48 rounded-full object-cover aspect-square"
    />
    <div class="flex flex-col items-center w-full pt-15 gap-4">
      <h1>Western Governers University</h1>
      <h2>B.S. Cybersecurity and Data Assurance</h2>
      <UProgress v-model="value" class="w-[35%]" size="lg" />
    </div>
    <div class="flex flex-col items-center pt-15 gap-3.5">
      <h1>CompTIA Certifications</h1>
      <div class="flex flex-row flex-wrap gap-5 pt-2">
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
      </div>
      <h1>Other Certifications</h1>
      <div class="flex flex-row flex-wrap gap-5 pt-2">
        <img src="/certlogos/itil4.png" alt="" class="h-36 w-36" />
      </div>
      <h1>Planned</h1>
      <div class="flex flex-row flex-wrap gap-5 pt-2">
        <img
          src="https://upload.wikimedia.org/wikipedia/commons/6/62/Solid_red.svg"
          alt=""
          class="h-36 w-36 rounded-full object-cover aspect-square opacity-35"
        />
        <img
          src="https://upload.wikimedia.org/wikipedia/commons/6/62/Solid_red.svg"
          alt=""
          class="h-36 w-36 rounded-full object-cover aspect-square opacity-35"
        />
        <img
          src="https://upload.wikimedia.org/wikipedia/commons/6/62/Solid_red.svg"
          alt=""
          class="h-36 w-36 rounded-full object-cover aspect-square opacity-35"
        />
      </div>
    </div>
  </div>
</template>
