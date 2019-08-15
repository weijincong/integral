//vue_server  app.js  node程序
//1、加载第三方模块
//web服务器
const express=require("express");
//mysql 驱动
const mysql=require("mysql");
//2、配置连接池：提高数据效率
var pool=mysql.createPool({
    host:"127.0.0.1",   //数据库地址
    user:"root",        //数据库用户名
    password:"",        //数据库密码
    port:3306,          //数据库端口
    database:"integral",//数据库名称
    connectionLimit:15  //连接数量
});






//功能一:完成用户登录
server.post("/login",(req,res)=>{
    
});