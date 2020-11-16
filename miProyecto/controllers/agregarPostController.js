let db = require('../database/models')
const post = db.Post;


let agregarPostController ={
    addPost : function(req, res){
       if(req.session.usuarios != null){
            return res.render('agregarPost')
        } else {
            return res.send("Solo los usuarios logueados pueden agregar post")
        }
    },
    storePost: function(req,res) {
        


        let postear = {
            usuario_id: req.session.usuarios.id,
            url_imagen: req.body.imagen,
            texto: req.body.descripcion,
            fecha_de_creacion: req.body.fechaCreacion,
        }
        post.create(postear)
        .then(function(){
        res.redirect('/home');
        })
        .catch(function(error){
            console.log(error);
        })

    }
}


module.exports = agregarPostController