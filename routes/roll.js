/*
 * @Author: Leo
 * @Date: 2022-12-10 21:18:55
 * @LastEditTime: 2022-12-10 22:27:45
 * @FilePath: \world_cup\routes\roll.js
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
router.get('/', (req, res)=>{
  const sql ="select * from country"
  db.query(sql,function(error, results)
  {
      if(error)
      {
          console.log("完了！")
          return
      }
      console.log(results)

      res.render("roll",{
          res:results
      });
  });
})

module.exports = router;
