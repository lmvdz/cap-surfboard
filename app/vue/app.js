const store = new Vuex.Store({
  state: {
    token: null
  },
  mutations: {
    setToken(state, token) {
      state.token = token;
    }
  },
  actions: {
    setToken({ commit }, token) {
      commit('setToken', token);
    }
  }
})


const router = new VueRouter({
  mode: 'history',
  routes: [
    {
      path: '/',
      name: "Home",
      component: () => importSFC('./src/views/Home.vue')
    },
    {
      path: '/about',
      name: "About",
      component: () => importSFC('./src/views/Home.vue')
    }
  ]
})

Vue.config.productionTip = false;

const app = new Vue({
  store,
  router,
  render: async h => {
    const App = await importSFC('./src/App.vue');
    return h(App)
  }
}).$mount("#app")