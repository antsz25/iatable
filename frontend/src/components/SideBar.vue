<template>
  <div class="sideBar">
    <div class="sideBarDesign">
        <router-link 
        to="/about" class="links">
            <div class="linkPageIcons">
                <img src="@/assets/user.png" width="70" alt="inicio">
                <h3 class="linkText">Inicio</h3>
            </div>
        </router-link>     
        <router-link 
        to="/" class="links">
            <div class="linkPageIcons">
                <img src="@/assets/settings.png" width="70" alt="inicio">
                <h3 class="linkText">Diagnosticar</h3>
            </div>
        </router-link>   
        <router-link 
        to="/" class="links">
            <div class="linkPageIcons">
                <img src="@/assets/visualizer.png" width="70" alt="inicio">
                <h3 class="linkText">Visualizar</h3>
            </div>
        </router-link>   
        <router-link 
        to="/" class="links">
            <div class="linkPageIcons">
                <img src="@/assets/manual.png" width="70" alt="inicio">
                <h3 class="linkText">Manual</h3>
            </div>
        </router-link>   
    </div>
  </div>
</template>

<script lang="ts"> import { defineComponent } from "vue";

export default defineComponent({
    name: "SideBar",
    data() {
        return {
        }
    } 
});
</script>

<style scoped>
.sideBar {
    min-width: 300px;
    background: linear-gradient(180deg, rgba(43, 60, 215, 0.2) 0%, rgba(116, 104, 128, 0.2) 100%), #000000;
    padding-left: 30px;
}
.sideBarDesign {    
    display: flex;
    flex-direction: column;
    height: 100%;
    gap: 25px;
}
.linkPageIcons {
    display: flex;
    flex-direction: row;
    align-items: center;
    gap: 20px;
    
}
.links {
    text-decoration: none;
    color: white;
}
@media screen and (max-width: 560px)  {
  .sideBar {
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
  }
  .sideBarDesign {
    justify-content: center;
    height: 100vh;
  }
}
</style>    