let db = require('../database/models')
const post = db.Post;


let agregarPostController ={
    addPost : function(req, res){
       // if(req.session.usuarios != undefined){

            return res.render('agregarPost')
        },
       /* else {
                res.redirect('/agregarPost')
               }
         } */
    storePost: function(req,res) {
        let postear = {
            usuario_id: req.session.usuarios.id,
            url_imagen: req.body.imagen,
            texto: req.body.descripcion,
            fecha_de_creacion: req.body.fechaCreacion
        }
        post.create(postear);
        return res.redirect('/home');


    }
}


module.exports = agregarPostController