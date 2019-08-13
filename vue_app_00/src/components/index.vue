<template>
  <div>
    <!-- 头部导航 -->
    <Nav></Nav>

    <!--轮播图部分-->
    <carsourul>
    </carsourul>
    <!-- 底部导航 -->
     <mt-tabbar v-model="active" fixed>
       <!--第一个按钮 首页--->
     <mt-tab-item id="message"  @click.native="changeState(0)">
         <foot
          :selectedImage="require('../assets/yemian-copy-copy-copy.png')"
          :normalImage="require('../assets/yemian-copy-copy-copy(2).png')"
          :focused="currentIndex[0].isSelect"
         ></foot>
          <!--按钮状态保存数组下标0属性中-->
          首页
       </mt-tab-item>
          <!-- 第二个按钮  -->
           <mt-tab-item id="Exchange" @click.native="changeState(1)">
        <foot
          :selectedImage="require('../assets/liwu-xuanzhong.png')"
          :normalImage="require('../assets/liwu-xuanzhong(2).png')"
          :focused="currentIndex[1].isSelect"
         ></foot>
          兑换商城
          </mt-tab-item>
          <!-- 第三个按钮 -->
           <mt-tab-item id="circle" @click.native="changeState(2)">
          <foot
          :selectedImage="require('../assets/liaotianshi-xuanzhong.png')"
          :normalImage="require('../assets/liaotianshi-xuanzhong(2).png')"
          :focused="currentIndex[2].isSelect"
         ></foot>
          兑友圈
          </mt-tab-item>
          <!-- 第四个按钮  -->
           <mt-tab-item id="me" @click.native="changeState(3)">
          <foot
          :selectedImage="require('../assets/wodedangxuan.png')"
          :normalImage="require('../assets/wodedangxuan(2).png')"
          :focused="currentIndex[3].isSelect"
         ></foot>
          我的
          </mt-tab-item>
    </mt-tabbar>
  </div>
</template>

<script>
//<!--1:引入nav-->
import nav from "./message/common/nav"
//1.1:底部子组件
import Foot from "./message/common/Foot"
//1.2:轮播子组件
import Carsourul from "./message/common/Carsourul"


export default {
   data(){
     return {
       //active保存字符串 子面板id
       //第一个子面板  message
       //第二个子面板  cart
       active:"message",
       //在data添加属性 currentIndex
       //集中保存所有按钮状态
     currentIndex:[
       {isSelect:true}, //0保存第一个按钮状态
       {isSelect:false},//1保存第二个按钮状态
       {isSelect:false},//2保存第三个按钮状态
       {isSelect:false} //3保存第四个按钮状态
       ]
     }
   },//<!--2:注册TitleBar-->
   methods:{
     changeState(idx){
       //功能:指定当前按钮状态修改true
       //    其它按钮状态修改    false
       //1:创建循环遍历状态数组
       for(var i=0;i<this.currentIndex.length;i++){
        //2:获取用户点击下标
        var ui = idx;
        //  与当前数据元素下标比较
        //3:如果两个值相等当前状态true
        if(ui==i){
          this.currentIndex[i].isSelect=true;
        }else{
         //4:其它元素状态false
         this.currentIndex[i].isSelect=false;
        }
          
       }
     }
   },
   components:{
     //注册顶部标题子组
     "Nav":nav,
     "foot":Foot,
     "carsourul":Carsourul
     //注册消息列表子组件
   }
}
</script>
<style scoped>
  /*3:修改组件默认样式 */
  .mint-tabbar>.mint-tab-item{
    color:#999999;/*默认灰色*/
  }
  /*4:修改组件选中样式 */
  .mint-tabbar>.mint-tab-item.is-selected{
    background-color:transparent;
    color: #26a2ff;/*选中绿色*/
  }



