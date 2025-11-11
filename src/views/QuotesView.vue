<!--  link this to the Module 10 API page. -->
<template>
  <div id="quotes" class="container">
    <h1>Random Quote Generator</h1>

    <!-- Display the quote or a loading message -->
    <p v-if="loading">Loading...</p>
    <p v-else>"{{ quote }}"</p>

    <!-- The button that triggers the API call -->
    <button @click="getQuote">Get New Quote</button>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  name: 'random-quotes',
  data() {
    return {
      quote: '',      // stores the quote text
      loading: false  // tracks loading status
    }
  },
  methods: {
    async getQuote() {
      this.loading = true
      try {
        // Send a GET request to the Quotable API
        const response = await axios.get('https://quotes15.p.rapidapi.com/quotes/random/?language_code=en', {
          headers: {
            'x-rapidapi-host': 'quotes15.p.rapidapi.com',
            'x-rapidapi-key': '72697e8fc4msh8caf613dab3491cp15c72ajsn8bd08a2751d9'
            }
          });
        // Update the quote with the response data
        this.quote = response.data.content;
        this.author = response.data.originator.name; 
      } catch (error) {
        console.error('Error fetching quote:', error)
        this.quote = 'Oops! Something went wrong.'
        this.author = ''
      } finally {
        this.loading = false
      }
    }
  },
  mounted() {
    // Load a random quote when the app first starts
    this.getQuote()
  }
}
</script>