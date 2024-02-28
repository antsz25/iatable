<template>
  <div>
    <h1>Test Component</h1>
  </div>
  <div>
    <div>
      <form @submit.prevent="submit" style = "display:block; align-items: center;">
        <h2>Test Sub-Component</h2>
        <button type="submit" style="color:red;">Submit</button>
      </form>
    </div>
  </div>
</template>
<style>
    .body{
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background-color: #f4f4f4;
    }
</style>
<script setup>
    import axios from "../main";
    import { useRouter } from "vue-router";
    const router = useRouter();
    if (router.currentRoute.value.path === "/") {
        console.log("This is the home page");
    }
    const submit = async () => {
        const response = await axios.get("/prolog/"+"r1");
        console.log(response);
    };

</script>
