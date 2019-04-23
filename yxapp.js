//创建服务器
const express=require("express");
const server=express();
server.listen(8080);
//使用body-parser获取数据
const bodyParser=require("body-parser");
//连接路由器
const userRouter=require("./routers/user.js");

//使用中间件托管静态资源
server.use(express.static("public"));
server.use(bodyParser.urlencoded({
	extended:false
}));
//挂载路由器
server.use("/user",userRouter);
