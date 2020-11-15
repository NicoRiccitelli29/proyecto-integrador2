const bcrypt = require('bcryptjs');
const db = require('../database/models');
const Usuarios = db.Usuarios;
const op = db.Sequelize.Op;

let miPerfilController ={

    perfil: function(req, res, next){
        let perfilUsuario = req.params.id
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
           res.render("miPerfil" ,{usuario: usuario});
        })
        .catch(function(error){
            console.log(error);
        })
        
    },
    
}



module.exports = miPerfilController