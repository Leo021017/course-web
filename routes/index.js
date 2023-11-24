/*
 * @Author: Leo
 * @Date: 2022-12-10 20:48:22
 * @LastEditTime: 2022-12-14 15:18:38
 * @FilePath: \world_cup\routes\index.js
 * @Description: Leo的一些没用的代码
 */
var express = require('express');
var router = express.Router();
var mysql = require('mysql')

const db = mysql.createPool({
  host     : 'localhost',
  user     : 'root',
  password : 'root',
  database : 'worldcup',
  port     : '3306',
})
/* GET home page. */
router.get('/', function(req, res, next) {
  const sql ="select * from news"
  db.query(sql,function(error, results)
  {
      if(error)
      {
          console.log("完了！")
          return
      }
      console.log(results)

      res.render("index",{
          res:results
      });
  });
});

module.exports = router;
