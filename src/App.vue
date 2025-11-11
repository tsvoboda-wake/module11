<template>
  <div class="container">
    <TheNavigation />
    <TheGoBack />
    <div id="app">
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

<style>
.container {
  text-align: center;
  font-family: Arial, sans-serif;
  margin-top: 50px;
}
button {
  margin-top: 20px;
  padding: 10px 20px;
  font-size: 16px;
}
.author {
  font-style: italic;
  color: #555;
  margin-top: 5px;
}
</style>