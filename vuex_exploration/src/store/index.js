import Vue from 'vue'
import Vuex from 'vuex'
import todos from './modules/todos'

// load Vuex
Vue.use(Vuex)

//Create the store
export default new Vuex.Store({
  state: {
  },
  mutations: {
  },
  actions: {
  },
  modules: {
    todos
  }
})
