import Vue from 'vue'
import VueRouter, { RouteConfig } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import DiagnosticView from '@/views/DiagnosticView.vue'
import VisualizerView from '@/views/VisualizerView.vue'
import ManualView from '@/views/ManualView.vue'


Vue.use(VueRouter)

const routes: Array<RouteConfig> = [
  {
    path: '/',
    name: 'home',
    component: HomeView,
    meta: { title: "Home"}
  },
  {
    path: '/about',
    name: 'about',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/AboutView.vue'),
    meta: { title: "About"}
  },
  {
    path: '/diagnostico',
    name: 'diagnostico',
    component: DiagnosticView,
    meta: { title: "Diagnostico"}
  },
  {
    path: '/visualizer',
    name: 'visualizer',
    component:  VisualizerView,
    meta: { title: "Visualizer"}
  },
  {
    path: '/manual',
    name: 'manual',
    component: ManualView,
    meta: { title: "Manual"}
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

const appTitle = "VWDiagnostic";
router.afterEach((to, from) => {
  Vue.nextTick(() => {
    document.title = `${appTitle} - ${to?.meta?.title}` || appTitle})
})

export default router
