/*
 * @Author: Leo
 * @Date: 2022-12-10 20:48:22
 * @LastEditTime: 2022-12-21 14:55:42
 * @FilePath: \world_cup\app.js
 * @Description: Leo的一些没用的代码
 */
var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var ejs = require('ejs');

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.engine('html',ejs.__express);
app.set('view engine', 'html');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', indexRouter);
app.use('/users', usersRouter);

var roll_route = require('./routes/roll')
app.use('/roll', roll_route)
var schedule_route = require('./routes/schedule')
app.use('/schedule', schedule_route)
var news_route = require('./routes/news')
app.use('/news', news_route)
var editNews_route = require('./routes/editNews')
app.use('/editNews', editNews_route)
var login_route = require('./routes/login')
app.use('/login', login_route)

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

//设置监听
var server = app.listen(3000, function () {

  var host = server.address().address
  var port = server.address().port

  console.log("应用实例，访问地址为 http://%s:%s", host, port)
})

module.exports = app;
