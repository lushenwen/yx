//创建路由器
const express=require("express");
const router=express.Router();
//导入连接池
const pool=require("../pool.js");
//创建用户注册路由post reg
router.post("/reg",(req,res)=>{
	var obj=req.body;
	for (var key in obj )
	{
		if(!obj[key]){
			res.send(key+"不能为空");
			return;
		}
	}
	var sql="insert into yx_user set ?";
	pool.query(sql,[obj],(err,result)=>{
		if(err) throw err;
		if(result.affectedRows>0){
			res.send("注册成功");
		}else{
			res.send("注册失败");
		}
	});
});
//创建用户名查询路由get sel
router.get("/sel",(req,res)=>{
	if(!req.query.uname){
		res.send("0");
		return;
	}
	var sql="select upwd from yx_user where uname=?";
	pool.query(sql,[req.query.uname],(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			res.send("1");
		}else{
			res.send("2");
		}
	});
});


//导出路由器
module.exports=router;