/*
 * @Author: Leo
 * @Date: 2022-12-10 21:18:55
 * @LastEditTime: 2023-11-24 16:26:02
 * @FilePath: \course-web\routes\schedule.js
 * @Description: Leo的一些没用的代码
 */
var express = require('express');
var router = express.Router();
var mysql = require('mysql')
var moment = require('moment')

const db = mysql.createPool({
  host     : 'localhost',
  user     : 'root',
  password : 'root',
  database : 'worldcup',
  port     : '3306',
})

/* GET home page. */
router.get('/', (req, res)=>{
  const sql ="select * from schedule"
  db.query(sql,function(error, results)
  {
      if(error)
      {
          console.log("完了！")
          return
      }
      console.log(results)

      res.render("schedule",{
          res   : results,
          moment: moment
      });
  });
})

module.exports = router;
