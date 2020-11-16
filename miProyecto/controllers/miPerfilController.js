const bcrypt = require('bcryptjs');
const db = require('../database/models');
const Usuarios = db.Usuarios;
const op = db.Sequelize.Op;

let miPerfilController ={

    perfil: function(req, res, next){
        let perfilUsuario = req.session.usuarios.id
        db.Usuarios.findOne(
            {
                where: [
                    { id: perfilUsuario },
                    
                ],
                include: [ 
                    
                   {
                         association: "posteos"
                    },
                    
               ]
            } 
        )
        .then(function(usuario) {
            req.session.usuarios = usuario
           return res.render("miPerfil" ,{usuario: usuario, query:req.query});
        })
        .catch(function(error){
            console.log(error);
        })
        
    },
    
}



module.exports = miPerfilController