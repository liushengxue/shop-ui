import Vue from 'vue'
import App from './App'
import LyTab from 'ly-tab'
import store from './store'

//引入路由
import router from './router/index'


Vue.use(LyTab)

new Vue({
    el: '#app',
    router,
    store,
    render: h => h(App)
});