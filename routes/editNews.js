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
    res.send('operate News');
    //send与render不能同时进行
    // res.render('newsMain',{});
})

//获取所有新闻
router.get('/getNews', function (req, res) {
    // console.log("getNewsName:",req.query.newsName);

    let sql = "select * from news where 1=1";
    let params=[];

    // 拼接sql语句
    if(req.query.newsName){
        params.push(req.query.newsName);
        sql += ` and newsName like '%${params}%'`;
        // console.log(sql);
    }

    // 连接数据库
 
    db.query(sql, function (error, results) {
        // 查询失败
        if (error) throw error;
        
        // 查询成功
        // console.log(results);

        // 查询结果并将其传入ejs进行渲染展示
        res.render('editNews',{
            res: results,
            searchName: req.query.newsName?req.query.newsName:'',
        });

        // ejs实例
        // const ejs = require('ejs');
        // let str = "测试";
        // let s = require('fs').readFileSync('./test.html').toString();
        // let result = ejs.render(s,{str:str});
        // console.log(result);


    });

 })

//删除新闻
router.get('/deleteNews',(req,res)=>{
    //接收要删除的newsId
    var params=[];
    params.push(req.query.id);
    // console.log(params);
    let sql = `delete from news where newsId = ${params}`;

    db.query(sql, function (error, results) {
        // 查询失败
        if (error) throw error;
        
        // 查询成功
        // console.log(results);

        //返回结果
        res.json({
            delstatus:1
        })
        

    });
})

//修改新闻
router.get('/modifyNews',(req,res)=>{
    //接收newsId
    var params=[];
    params.push(req.query.newsId);
    // console.log(params);
    let sql = `select * from news where newsId = ${params}`;
    //将查询信息渲染到修改页面
    db.query(sql, function (error, results) {
        // 查询失败
        if (error) throw error;
        
        // 查询成功
        // console.log(results);

       res.render('modifyNews',{
        newsObj: {
            newsId: results[0].newsId,
            newsName: results[0].newsName,
            newsIntro: results[0].newsIntro,
            news: results[0].news,
        }
       })
        
    });
})

//更新新闻
router.get('/updateNews',(req,res)=>{
    //获取所有信息
    var params=[];
    params.push(req.query.newsId);
    // console.log(params);

    let id = req.query.newsId;
    let nname = req.query.newsName;
    let intro = req.query.newsIntro;
    let news = req.query.news;
    let sql = `update news set newsName='${nname}',newsIntro='${intro}',news='${news}'  where newsId = '${id}'`;

    db.query(sql, function (error, results) {
        // 查询失败
        if (error) throw error;
        
        // 查询成功
        // console.log(results);

        // 返回
        res.redirect('/editNews/getNews');
    });
})

//开始添加新闻
router.get('/addNews',(req,res)=>{
    // console.log("ok");
    res.render('addNews',{});
})

//添加新闻
router.get('/addNews',(req,res)=>{
    let id = req.query.newsId;
    let nname = req.query.newsName;
    let intro = req.query.newsIntro;
    let news = req.query.news;
    let sql = `INSERT INTO news VALUES ('${id}', '${nname}', '${intro}', '${news}')`;
    // console.log(sql);
    db.query(sql, function (error, results) {
        // 查询失败
        if (error){
            res.redirect('/editNews/getNews');
        }
        
        // 查询成功
        // console.log(results);

        // 返回
        res.redirect('/editNews/getNews');
    });
})

 module.exports = router;