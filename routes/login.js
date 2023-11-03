/*
 * @Author: Leo
 * @Date: 2022-12-11 20:52:37
 * @LastEditTime: 2022-12-21 16:21:12
 * @FilePath: \world_cup\routes\login.js
 * @Description: Leo的一些没用的代码
 */
const express = require('express');
const router = express.Router();
const mysql = require('mysql');

router.get('/',(req,res)=>{
    res.render('login',{ title: 'Express' });
})

var connection = mysql.createConnection({    
    host     : 'localhost',      
    user     : 'root',            
    password : 'HYC20021017.2.2',   
    port: '3306',                  
    database : 'worldcup'
  
  });
  
  //建立连接
  
  connection.connect();

router.get('',(req,res)=>{
    // res.send('check');
    var response = {
        "username":req.query.username,
        "password":req.query.password,
     };
    //  res.send(response);

     //创建查询数据的sql语句实现登录功能，查询账号和密码并且与用户输入的账号密码完全一致

     var selectSQL = "select username,password from admin where username = '"+req.query.username+"' and password = '"+req.query.password+"'";

     //进行数据库操作
 
     connection.query(selectSQL,function (err, result) {
         if(err){
          console.log('[login ERROR] - ',err.message);
          return;
         }

         if(result=='')
         {
             console.log("帐号密码错误");
             res.render("error");
         }
         else
         {
             console.log("登录成功");
             res.render("index");
         }
     });

})

module.exports = router;