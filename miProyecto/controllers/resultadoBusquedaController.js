const bcrypt = require('bcryptjs');
const db = require('../database/models');

const op = db.Sequelize.Op;


let resultadoBusquedaController = {

    resul: function(req, res) {
    
        let resultadoBusqueda = req.query.busqueda;

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
        .catch(function(error){
            console.log(error)
        })
    }, 
}
module.exports = resultadoBusquedaController;