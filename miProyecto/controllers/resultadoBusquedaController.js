const bcrypt = require('bcryptjs');
const db = require('../database/models');

const op = db.Sequelize.Op;


let resultadoBusquedaController = {

    resul: function(req, res) {
    
        let resultadoBusqueda = req.query.busqueda;

        db.Usuarios.findAll(
            {
                where: {
                   [op.or]: [{ nombre: { [op.like]: "%" + resultadoBusqueda + "%"} }, { correo: { [op.like]: "%" + resultadoBusqueda + "%"} } ],
                }
               // order: ["nombre"],
                
            }
        )
        .then(function(Usuarios) {
            res.render("resultadoBusqueda", {usuarios: Usuarios, resultadoBusqueda: resultadoBusqueda});
            
        })
        .catch(function(error){
            console.log(error)
        })
    }, 
}
module.exports = resultadoBusquedaController;