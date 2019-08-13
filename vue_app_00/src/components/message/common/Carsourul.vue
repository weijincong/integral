<template>
    <div>
        <mt-swipe :auto="4000">
            <mt-swipe-item v-for="(item,index) of imgs.data" :key="index"></mt-swipe-item>
            <mt-swipe-item>2</mt-swipe-item>
            <mt-swipe-item>3</mt-swipe-item>
        </mt-swipe>
    </div>
</template>
<script>
export default {
    data(){
        return{
            imgs:[
                {
                    index:1,
                    src :"../assets/yemian-copy-copy-copy.png"
                },
                {
                    index:2,
                    src :"../assets/yemian-copy-copy-copy.png"
                },
                {
                    index:3,
                    src :"../assets/yemian-copy-copy-copy.png"
                }
            ]
        }
    },

}
</script>
<style scoped>
    .mint-swipe{
        height:200px;
    }
    .mint-swipe-item:nth-child(1){
        background-color: red;
    }
    .mint-swipe-item:nth-child(2){
        background-color: blue;
    }
    .mint-swipe-item:nth-child(3){
        background-color: yellow;
    }
</style>