const db = require('../database/models')
const posteo = db.Post;
const comment = db.Comment;



const post = require("../database/models/post");

let detallePostController ={
    index: function ( req, res){
        return res.render ('detallePost');
    },

    porId: function(req, res){
        if(req.query.texto){
            res.redirect("/detallePost/" + req.params.id + "/comentario?=texto=" + req.query.texto)
        }

        let primaryKey = req.params.id;

        posteo.findByPk(primaryKey, {
            include: [
                {
                    all: true, nested: true
                },
            ]
        })
        .then(function(resultados){
            return res.render('detallePost', {resultados: resultados});
        })
        .catch(function(error){
            console.log(error);
        })
    },


    comentario: function(req,res){

        let comentario = {
            id: req.params.id,
            usuarios_id: req.session.usuarios.id,
            texto: req.query.texto,
            fecha_de_creacion: 0,

        }

        comment.create(comentario);
        return res.redirect('/detallePost' + req.params.id)




    }

}

module.exports = detallePostController;