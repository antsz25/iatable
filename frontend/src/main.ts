import Vue from 'vue'
import App from './App.vue'
import router from './router'
import { Library, library } from '@fortawesome/fontawesome-svg-core';
import { fas } from '@fortawesome/free-solid-svg-icons';
import { far } from '@fortawesome/free-regular-svg-icons'
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome';
import { faSquareFull } from "@fortawesome/free-solid-svg-icons";

library.add(fas, far, faSquareFull);
Vue.component("font-awesome-icon", FontAwesomeIcon);

Vue.config.productionTip = false;

new Vue({
  router,
  render: h => h(App)  
}).$mount('#app')
