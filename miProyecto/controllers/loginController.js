const bcrypt = require('bcryptjs');
const db = require('../database/models');
const usuario = db.User;

const op = db.Sequelize.Op;



let loginController ={
    log: function(req, res) {
        return res.render('login' );
    }
}




module.exports= loginController ;