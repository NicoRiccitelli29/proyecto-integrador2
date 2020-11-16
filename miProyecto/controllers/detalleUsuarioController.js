let db = require('../database/models');
const { isHttpError } = require('http-errors');
const users = db.Usuarios;
const op = db.Sequelize.Op;

let detalleUsuarioController = {

    index: function(req,res){
        let primaryKey = req.params.id

        if(req.session.usuarios != undefined){
            
            if(req.session.usuarios.id == primaryKey){
                res.redirect("/miPerfil")
            } else {
                users.findByPk(primaryKey,
                    {
                        include: [{ all:true, nested:true}]
                    })
                    .then(function(resultados){
                        return res.render("detalleUsuario", {resultados:resultados})
                    })
                    .catch(function(error){
                        console.log(error)
                    })
                }


         } else {
                users.findByPk(primaryKey,
                    {
                        include: [
                            {
                                all: true, nested:true
                            },
                        ],
                    })
                    .then(function(resultados){
                        return res.render('detalleUsuario', {resultados: resultados})
                    })
                    .catch(function(error){
                        console.log(error)
                    })
                    }
            }

        }





    























/*


let detalleUsuarioController ={
    index: function(req,res){
        let primaryKey = req.params.id
        users.findByPk(primaryKey,
            
            {
                include: [
                    {
                        all: true, nested:true
                    },

                ],
            })
            .then(function(resultados){
                return res.render('detalleUsuario', {resultados: resultados})
            })
            .catch(function(error){
                console.log(error)
            })


    }
*/



 /*   index: function(req, res) {
        return res.render('detalleUsuario');
    }*/
  
//}

module.exports = detalleUsuarioController;