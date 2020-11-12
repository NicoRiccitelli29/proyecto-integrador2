const bcrypt = require('bcryptjs');
const db = require('../database/models');

const op = db.Sequelize.Op;


let registracionController = {
    index: function(req, res,){
        return res.render('registracion');
    },

    store: function(req,res) {
        
        let user = {
            nombre : req.body.nombre,
            apellido : req.body.apellido, 
            fecha : req.body.fecha, 
            numero : req.body.numero, 
            email : req.body.email, 
            password : bcrypt.hashSync(req.body.password, 10), 
        }

        return res.send(user);
    },

}
    
    




module.exports= registracionController;