const bcrypt = require('bcryptjs');
const db = require('../database/models');
const usuarios = db.User;

const op = db.Sequelize.Op;


let resultadoBusquedaController = {

    resul: function(req, res) {
    
        let resultadoBusqueda = req.query.buscador;

        db.Usuarios.findAll(
            {
                where: [
                    { nombre: { [op.like]: "%" + resultadoBusqueda + "%"} }
                ],
                order: ["nombre"],
                
            }
        )
        .then(function(Usuarios) {
            res.render("resultadoBusqueda", {usuarios: Usuarios});
        })
    }, 
}
module.exports = resultadoBusquedaController;