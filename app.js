//app.js
//1:加载模块 express
const express = require("express");
//1.1 加载图片轮播(路由模块 一个文件<包含一组功能>)
const imagelist = require("./routes/imagelist")
const goodslist = require("./routes/goodslist")
const newslist = require("./routes/newslist")
const login = require("./routes/login")
const cart = require("./routes/cart")

//1.2:加载处理post参数第三方模块
const bodyParse = require("body-parser")
//2:创建express
var app = express();
//2.0:配置模块
app.use(bodyParse.urlencoded({extended:false}));
//2.1:加载处理跨域模块
const cors = require("cors");
//2.2:允许哪个地址跨域访问
app.use(cors({
    origin:"*",
    credentials:true
}));
//3:绑定监听端口 3003
app.listen(3003);
//4:指定静态目录 public
//__dirname 当前程序所有目录完整路径
app.use(express.static(__dirname+"/public"));
//5:将图片轮播模块加载当前应用中指定访问路径
app.use("/imagelist",imagelist);
app.use("/goodslist",goodslist);
app.use("/newslist",newslist);
app.use("/login",login)
app.use("/cart",cart)
