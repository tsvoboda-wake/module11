<template>
  <div>
    <TheNavigation />
    <TheGoBack />
    <div class="container" id="app">
      <router-view />
    </div>
  </div>
</template>

<script>
import TheNavigation from "@/components/TheNavigation.vue"
import TheGoBack from "@/components/TheGoBack.vue"

export default {
  components: {
    TheNavigation,
    TheGoBack,
  },
}
</script>
