import { createApp } from 'vue'
import { createRouter, createWebHistory } from 'vue-router';
import './style.css'
import App from './App.vue'
import axios from 'axios';
import TestComponentVue from './components/TestComponent.vue';

if(process.env.NODE_ENV === 'development'){
    axios.defaults.baseURL = 'http://localhost:3000';
}
if(process.env.NODE_ENV === 'production'){
    axios.default.baseURL = '/backend';
}

const routes = [
    {path: '/', component: TestComponentVue}
];

const router = createRouter({
    history: createWebHistory(),
    routes
});
createApp(App).use(router).mount('#app');

export default axios;
