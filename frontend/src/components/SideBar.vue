<template>
  <div class="sideBar">
    <div class="sideBarDesign">
        <div class="mobilePresentation">
            <img src="@/assets/VolkwagenMobile.png" width="140" alt="inicio">
            <h3>Volkswagen Beetle 2000</h3>
        </div>
        <router-link 
        to="/" class="links">
            <div class="linkPageIcons">
                <img src="@/assets/user.png" width="70" alt="inicio">
                <h3 class="linkText">Inicio</h3>
            </div>
        </router-link>     
        <router-link 
        to="/diagnostico" class="links">
            <div class="linkPageIcons">
                <img src="@/assets/settings.png" width="70" alt="inicio">
                <h3 class="linkText">Diagnosticar</h3>
            </div>
        </router-link>   
        <router-link 
        to="/visualizer" class="links">
            <div class="linkPageIcons">
                <img src="@/assets/visualizer.png" width="70" alt="inicio">
                <h3 class="linkText">Visualizar</h3>
            </div>
        </router-link>   
        <router-link 
        to="/manuel" class="links">
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
.mobilePresentation {
    display: none;
    color: white;
    font-size: 20px;
}
.sideBar {
    min-width: 300px;
    background : linear-gradient(0deg, #1F292B, #1F292B),
    linear-gradient(180deg, rgba(122, 39, 206, 0.2) 0%, rgba(116, 104, 128, 0.2) 100%);
    background-color: rgba(31, 41, 43, 1);
    padding: 10px;
}
.sideBarDesign {    
    display: flex;
    flex-direction: column;
    justify-content: space-evenly;
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
  .mobilePresentation {
    display: block;
  }
}
</style>    