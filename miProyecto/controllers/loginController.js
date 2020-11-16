const bcrypt = require('bcryptjs');
const db = require('../database/models');
const op = db.Sequelize.Op;
const users = db.Usuarios


let loginController ={
    index: function(req, res) {
        if(req.session.usuarios!= undefined){
            return res.redirect('/home')
        }
        else{
            return res.render('login');    
        }
    },


    login: function(req, res){
        //1) Le pedimos que encuentre el mail
        //2) Chequeamos que la contraseña coincida
        users.findOne({
            where:  [{ correo: req.body.correo }]
        })

        .then(function(users){
            //Si el usuario no existe en la base de datos: 
            if(users == null){
                return res.send("El usuario es incorrecto")
            }

            else if(bcrypt.compareSync(req.body.password, users.password)== false){
                //Si el usuario esta bien pero la contraseña es incorrecta:
                //return res.redirect('/home');
                return res.send('La contraseña es incorrecta')
            }

            //Si coinciden las contraseñas:
            else if (bcrypt.compareSync(req.body.password, users.password)){
                req.session.usuarios = users;

                //session se maneja con un modulo
                /*if(req.body.rememberme != undefined){
                    res.cookie('usuariosId', users.id, {maxAge: 20*1000} );
                    return res.redirect('/home');
                }*/
                return res.redirect('/home');
            }
            
        })
        .catch(function(error){
            console.log(error)
        })
    },
}


module.exports= loginController ;