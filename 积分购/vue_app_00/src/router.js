import Vue from 'vue'
import Router from 'vue-router'
import index from "./components/index.vue"
import nav from "./components/message/common/nav.vue"
import Foot from "./components/message/common/Foot.vue"
import Carsourul from "./components/message/common/Carsourul.vue"
import Login from "./components/message/common/Login.vue"
import Logins from "./login/src/lib/Logins.vue"
// import Home from "./components/weixin/Home.vue"

//#为Exam01.vue 组件指定访问路径
//1:在router.js 引入组件
// import Exam01 from "./components/exam/Exam01.vue"


Vue.use(Router)
export default new Router({
  routes: [
    // {path:'/Home',component:Home},
    {path:'/',component:index},
    {path:'/nav',component:nav},
    {path:'/Foot',component:Foot},
    {path:'/Carsourul',component:Carsourul},
    {path:'/Login',component:Login},
    {path:'/Logins',component:Logins}
    // {path:'/Exam01',component:Exam01}
  ]
})
