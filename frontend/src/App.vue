<template>
  <div id="app">
    <div class="top-bar" v-if="$route.path!='/'">
      <img :src="require(`@/assets/${getActualURL}.png`)" alt="Inicio">
      <img src="@/assets/exit.png" alt="">
    </div>
    <router-view/>
  </div>
</template>


<script lang="ts">
export default {
  data() {
    return{
      actualRoute: ""
    }
  },
  computed: {
    getActualURL(): string {
      if(this.$route.path=="/diagnostico"){
        return "settings"
      }
      return "home"
    },
  }

}
</script>

<style scoped>
#app {
  font-family: Roboto, Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
div {
  height: 100vh;
}
nav {
  padding: 30px;
}

nav a {
  font-weight: bold;
  color: #2c3e50;
}

nav a.router-link-exact-active {
  color: #42b983;
}

.top-bar {
  background: linear-gradient(180deg, rgba(43, 60, 215, 0.2) 0%, rgba(116, 104, 128, 0.2) 100%), #000000;
  height: 63px;
}
</style>
