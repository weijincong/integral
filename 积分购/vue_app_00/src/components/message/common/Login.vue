<template>
    <div>
        <!--1、用户名输入框-->
        <mt-field label="用户名" :placeholder="unameholder" v-model="uname" :attr="{maxlength:12}"></mt-field>
        <!--2、密码输入框-->
        <mt-field label="密码" :placeholder="upwdholder" v-model="upwd" :attr="{maxlength:16}" type="password"></mt-field>
        <!--3、引入滑动验证-->
        <logins v-show="play"></logins>
        <!--4、登录按钮-->
        <mt-button size="large" @click="login">登录</mt-button>
    </div>
</template>
<script>
//引入子组件silde-vertfy
import Logins from "../../../login/src/lib/Logins"
export default {
    data(){
        return{
            unameholder:"请输入用户名",
            uname:"",
            upwdholder:"请输入密码",
            upwd:"",
            play:false,
        }
    },
    components:{
        "logins":Logins
    },
    methods:{
        login(){
            this.play=true;
                
        }
    }
}
</script>
<style scoped>
    
</style>