<template>
  <div class="home">
    <side-bar></side-bar>
    <div class="carLogo"> 
      <img src="@/assets/Volkswagen.png" alt="volkswagenLogo">  
      <h1>Volkswagen Beetle 2000</h1>
    </div>
  </div>
</template>

<script lang="ts">
import Vue from 'vue';
import SideBar from '@/components/SideBar.vue';

export default Vue.extend({
  name: 'HomeView',
  components: {
    SideBar
  },
  
});
</script>
<style>
.home {
  display: flex;
  width: 100%;
}
.carLogo {
  width: 100%;
  background-color: white;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

@media screen and (max-width: 560px)  {
  .carLogo {
    display: none;
  }
}
</style>
