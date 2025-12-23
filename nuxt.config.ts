// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  compatibilityDate: '2025-07-15',
  devtools: { enabled: true },
  nitro: {
    preset: "bun"
  },

  modules: [
    '@nuxt/eslint',
    '@nuxt/ui',
    '@nuxt/test-utils',
    '@nuxt/image'
  ],
  css: ['~/assets/css/main.css'],

  vite: {
    server: {
      allowedHosts: [".pancakepuncher.com"]
    }
  }
})