<template>
  <div id="app">
    <div class="top-bar" v-if="$route.path!='/'">
      <div class="header-imageTitle">
        <img :src="require(`@/assets/${getActualURL.toLowerCase()}.png`)" alt="Inicio" width="60">
        <h2>{{ getActualURL == "Manual" ? "Guia de indicadores" : getActualURL }}</h2>
      </div>
      <img src="@/assets/exit.png" alt="" width="60" @click="goToHome" style="cursor: pointer;">
    </div>
    <router-view />
  </div>
</template>


<script lang="ts">
import { defineComponent } from "vue"

export default defineComponent({
  data() {
    return{
      actualRoute: ""
    }
  },
  computed: {
    getActualURL(): string {
      if(this.$route.path=="/diagnostico"){
        return "Diagnosticar"
      }
      else if(this.$route.path=="/visualizer"){
        return "Visualizer"
      }
      else if(this.$route.path=="/manual"){
        return "Manual"
      }
      return "home"
    },
  },
  methods: {
    goToHome() {
      this.$router.push("/");
    }
  }

});
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
  height: 10%;
  display: flex;
  justify-content: space-between;
  padding: 15px;
}
.header-imageTitle {
  display: flex;
  justify-content: space-between;
  height: 63px;
  color: #fff;
  align-items: center;
  gap: 10px;
}
</style>
