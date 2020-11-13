const bcrypt = require('bcryptjs');
const db = require('../database/models');
const Usuarios = db.Usuarios;
const op = db.Sequelize.Op;



let registracionController = {
    index: function(req, res,){
        return res.render('registracion');
    },

    store: function(req,res) {

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

        db.Usuarios.findOne(
            {
                where: [
                    { nombre: nombre },
                    
                ]
            }
        ).then(function(usuario){
            console.log(usuario);
            if(usuario == null){
                
                db.Usuarios.create(Usuarios)
                .then(function() {
                    res.redirect("/login");
                })
            }else{
                res.send("El usuario esta repetido")

            }
        })

    
    },

}
    
    




module.exports= registracionController;