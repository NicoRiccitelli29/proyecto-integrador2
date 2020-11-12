const bcrypt = require('bcryptjs');
const db = require('../database/models');

const op = db.Sequelize.Op;


let registracionController = {
    index: function(req, res,){
        return res.render('registracion');
    },

    store: function(req,res) {
    },

}
    
    




module.exports= registracionController