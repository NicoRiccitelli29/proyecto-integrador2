let db = require('../database/models');
const post = db.Post;


let homeController ={
    
    index: function(req, res) { 

        post.findAll(
            {
                include: [
                  {  all: true, nested: true }
                ],
                order: [['fecha_de_creacion','DESC']],
                limit: 10,
                include: [
                    {
                        association: "usuario"
                    }
                ]
            })

            .then(function(resultados){
                //console.log(resultados);
                
                return res.render ('home' , {resultados: resultados});
            })
            .catch(function(error){
                console.log(error)
            });



        
    },
    miPerfil: function(req,res){
        if (req.session.usuarios != null){
            return res.render('miPerfil')
        } else {
            return res.send("Solo los usuarios logueados pueden acceder a esta página")
        }
    }
   
}

module.exports = homeController