const bcrypt = require('bcryptjs');
const db = require('../database/models');
const usuarios = db.User;

const op = db.Sequelize.Op;



let resultadoBusquedaController ={
    resul: function(req, res){
        return res.render('resultadoBusqueda')
    }
}


module.exports = resultadoBusquedaController;