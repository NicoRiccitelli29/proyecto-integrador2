const bcrypt = require('bcryptjs');
const db = require('../database/models');
const usuarios = db.Usuarios;
const op = db.Sequelize.Op;



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

        //le vamos a pedir que encuentre el mail
        db.Usuarios.findOne({
            where:  [{correo: req.body.email}]
        })
        .then(function(usuarios){
            //Que el email no exista en la base de datos 
            if(usuarios == null){
                return res.send("El email es incorrecto");
            }
            else if(bcrypt.compareSync(req.body.password, usuarios.password) == false){
                //El email esta bien pero la contraseña es incorrecta 
                return res.send('La contraseña es incorrecta')
            }
            //coinciden contraseñas
            else if (bcrypt.compareSync(req.body.password, usuarios.password) ){
                req.session.usuarios = usuarios;

                //session se maneja con un modulo
                if(req.body.rememberme != undefined){
                    res.cookie('usuariosId', usuarios.id, {maxAge: 20*1000} );
                    return res.redirect('/home');
                }
                return res.redirect('/home');
            }
            
        })
        .catch(function(error){
            console.log(error)
        })
    },
}


module.exports= loginController ;