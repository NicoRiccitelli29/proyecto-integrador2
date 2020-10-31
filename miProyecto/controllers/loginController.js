const bcrypt = require('bcryptjs');
const db = require('../database/models');
const usuario = db.User;

const op = db.Sequelize.Op;



let loginController ={
    log: function(req, res) {
        if(req.session.user != undefined){
            return res.redirect('/')
        }
        else{
            return res.render('login')     
        }
    
    },
    login: function(req, res){
        //le vamos a pedir que encuentre el mail
        usuarios.findOne({
            where: [{email: req.body.email}]
        })
        .then(function(usuario){
            //Que el email no exista en la base de datos 
            if(usuario == null){
                return res.send("El email es incorrecto");
            }
            else if(bcrypt.compareSync(req.body.password, usuario.password) == false){
                //El email esta bien pero la contraseña es incorrecta 
                return res.send('La contraseña es incorrecta')
            }
            
        })
        .catch(e => console.log(e))
    },
}


module.exports= loginController ;