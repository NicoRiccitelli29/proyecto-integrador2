const bcrypt = require('bcryptjs');
const db = require('../database/models');
const Usuarios = db.Usuarios;
const op = db.Sequelize.Op;



let registracionController = {
    index: function(req, res,){
        return res.render('registracion');
    },

    store: function(req,res) {
        
        let Usuarios = {
            nombre : req.body.nombre,
            apellido : req.body.apellido, 
            correo : req.body.correo, 
            password : bcrypt.hashSync(req.body.password, 10),
            telefono : req.body.telefono, 
            fecha_de_nacimiento : req.body.fecha_de_nacimiento, 
            
        }

        return res.send(Usuarios);
    },

}
    
    




module.exports= registracionController;