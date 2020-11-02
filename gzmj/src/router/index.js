import Vue from 'vue'
import VueRouter from 'vue-router'
import Index from '../views/Index.vue'
import Details from '../views/Details.vue'
import Details2 from '../views/Details2.vue'
import AMap from '../views/AMap.vue'
import Me from '../views/Me.vue'
import Billing from '../views/Billing.vue'
import Card from '../views/Card.vue'
import Personal from '../views/Personal.vue'
import Order from '../views/Order.vue'
import Noeval_one from '../views/Noeval_one.vue'
import Payment_one from '../views/Payment_one.vue'
import Paied from '../views/Paied.vue'
import Reservations from '../views/Reservations.vue'
import Obligation from '../views/Obligation.vue'
import Enroll from '../views/Enroll.vue'
import Login from '../views/Login.vue'


Vue.use(VueRouter)

const routes = [
  
  {
    path: '/login',
    component:Login
  },
  {
    path: '/enroll',
    component:Enroll
  },
  {
    path: '/obligation',
    component:Obligation
  },
  {
    path: '/reservations',
    component: Reservations
  },
  {
    path: '/paied',
    component: Paied
  },
  {
    path: '/payment_one',
    component: Payment_one
  },
  {
    path: '/noeval_one',
    component: Noeval_one
  },
  {
    path: '/order',
    component: Order
  },
  {
    path: '/personal',
    component: Personal
  },
  {
    path: '/card',
    component: Card
  },
  {
    path: '/billing',
    component: Billing
  },
  {
    path: '/',
    component: Index
  },
  {
    path: '/details/:id',
    component: Details
  },
  {
    path: '/details2',
    component: Details2
  },
  {
    path: '/amap/:id',
    component: AMap
  },
  {
    path: '/me',
    component: Me
  },
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
