<script setup lang="ts">
import AppFooter from "~/components/AppFooter.vue";
import AppHeader from "~/components/AppHeader.vue";
</script>

<template>
  <div class="flex flex-col min-h-screen p-5">
    <header>
      <AppHeader />
    </header>
    <main class="grow">
      <slot />
    </main>
    <footer>
      <AppFooter />
    </footer>
  </div>
</template>
