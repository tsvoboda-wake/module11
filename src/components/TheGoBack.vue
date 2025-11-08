<template>
  <button @click="goBack">Go Back</button>
</template>

<script>
export default {
  methods: {
    goBack() {
      return this.$router.go(-1)
    }
  }
}
</script>
