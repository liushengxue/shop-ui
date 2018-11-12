import Vue from 'vue'
import App from './App'
import LyTab from 'ly-tab'

//引入路由
import router from './router/index'


Vue.use(LyTab)

new Vue({
    el: '#app',
    router,
    render: h => h(App)
});