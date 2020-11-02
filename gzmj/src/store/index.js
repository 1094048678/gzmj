import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    isLogined:localStorage.getItem('isLogined')?localStorage.getItem('isLogined'):0,
    collection:localStorage.getItem('collection')?localStorage.getItem('collection'):0
  },
  mutations: {
    logined(state){
      state.isLogined=1
    },
    coll(state){
      state.collection=1
    }
  },
  actions: {
  },
  modules: {
  }
})
