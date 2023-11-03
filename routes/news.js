/*
 * @Author: Leo
 * @Date: 2022-12-11 20:01:58
 * @LastEditTime: 2022-12-14 16:33:59
 * @FilePath: \world_cup\routes\news.js
 * @Description: Leo的一些没用的代码
 */
const express = require('express');
const router = express.Router();
const mysql = require('mysql');

// 数据库连接池配置
const db = mysql.createPool({
    host     : 'localhost',
    user     : 'root',
    password : 'HYC20021017.2.2',
    database : 'worldcup'
});

router.get('/',(req,res)=>{
    const sql ="select * from news"
    db.query(sql,function(error, results)
    {
        if(error)
        {
            console.log("完了！")
            return
        }
        console.log(results)

        res.render("news",{
            res:results
        });
    });
})

router.get('/news_details',(req,res)=>{
    //接收newsID
    // var params=[];
    // params.push(req.query.newsID);

    var params=req.query.newsID
    let sql = `select * from news where newsID = ${params}`;
    //将查询信息渲染到修改页面
    db.query(sql, function (error, results) {
        // 查询失败
        if (error) throw error;
        
        // 查询成功
        // console.log(results);

       res.render('news_details',{
        newsObj: {
            newsID: results[0].newsID,
            newsName: results[0].newsName,
            newsIntro: results[0].newsIntro,
            news: results[0].news,
            img:results[0].img,
        }
       })
    });
})

module.exports = router;