var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
let homeRouter = require ('./routes/home');
let loginRouter = require('./routes/login');
let detalleRouter = require('./routes/detalle');
let agregarPostRouter= require('./routes/agregarPost');
let miPerfilRouter= require('./routes/miPerfil');
let registracionRouter= require('./routes/registracion')
var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));
//Rutas
app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use('/home', homeRouter);
app.use('/login', loginRouter);
app.use('/detalle', detalleRouter);
app.use('/agregarPost', agregarPostRouter);
app.use('/miPerfil', miPerfilRouter);
app.use('/registracion', registracionRouter)

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

module.exports = app;
