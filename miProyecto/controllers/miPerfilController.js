const bcrypt = require('bcryptjs');
const db = require('../database/models');
const Usuarios = db.Usuarios;
const op = db.Sequelize.Op;

let miPerfilController ={
     
    perfil: function(req, res) {
        if(req.session.usuarios != null){
            return res.render('miPerfil')
        } else {
            return res.send("Solo los usuarios logueados pueden acceder al perfil")
        }
    },

        editarPerfil: function(req, res,){
            return res.render('editarPerfil');
        },

        actualizarPerfil: function(req,res) {

        let nombre = req.body.nombre;
        let apellido = req.body.apellido; 
        let correo = req.body.correo; 
        let password = bcrypt.hashSync(req.body.password, 10);
        let telefono = req.body.telefono; 
        let fecha_de_nacimiento = req.body.fecha_de_nacimiento; 
        
        let Usuarios = {
            nombre : nombre,
            apellido : apellido, 
            correo : correo, 
            password : password,
            telefono : telefono, 
            fecha_de_nacimiento :fecha_de_nacimiento, 
            
        }

       
                
                db.Usuarios.update(Usuarios, {
                    where: {id:6}
                })
                .then(function() {
                    res.redirect("/miPerfil");
                })
            
            
        
        .catch(function(error){
            console.log(error);
        })

    
    },

   /* perfil: function(req, res, next){
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
    */
}



module.exports = miPerfilController