var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var session = require ("express-session");
var logger = require('morgan');
var db = require ('./database/models')

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
let homeRouter = require('./routes/home');
let loginRouter = require('./routes/login');
let detalleUsuarioRouter = require('./routes/detalleUsuario');
let detallePostRouter = require('./routes/detallePost');
let agregarPostRouter= require('./routes/agregarPost');
let miPerfilRouter= require('./routes/miPerfil');
let registracionRouter= require('./routes/registracion');
let resultadoBusquedaRouter = require ('./routes/resultado');
let logoutRouter = require ('./routes/logout');
var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(session(
  { secret:'usuarios',
    resave: false,
    saveUninitialized: true }
));
app.use(express.static(path.join(__dirname, 'public')));

app.use(function(req, res, next){
  if(req.session.usuarios != undefined){
     //locals me deja disponible los datos en todas las vistas
  res.locals.usuarios = req.session.usuarios
  }
  return next();
})
//Toda la info para las cookies
/*app.use(function(req, res, next){
  if(req.cookies.usuariosId != undefined && req.session.usuarios == undefined){
    //Buscar al usuario en la db
    db.usuarios.findByPk(req.cookies.usuariosId)
    .then(function(usuarios){
      req.session.usuarios = usuarios;
      return next();

    })
    .catch(e => console.log(e))
    //Lo cargamos en la session
  }
  return next();
})*/
//Rutas
app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use('/home', homeRouter);
app.use('/login', loginRouter);
app.use('/detalleUsuario', detalleUsuarioRouter);
app.use('/detallePost', detallePostRouter);
app.use('/agregarPost', agregarPostRouter);
app.use('/miPerfil', miPerfilRouter);
app.use('/registracion', registracionRouter);
app.use('/resultadoBusqueda', resultadoBusquedaRouter);
app.use('/logout', logoutRouter);

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
