let miPerfilController ={

    perfil: function(req, res, next){
        let idUsuarioAMostrar = req.params.id
        db.usuarios.findOne(
            {
                where: [
                    { id: idUsuarioAMostrar },
                    
                ],
                include: [ 
                    {
                        association: "seguidoress"
                    },
                    {
                        association: "posteos"
                    },
                    {
                        association: "seguido"  
                    }
                ]
            }
        )
        .then(function(usuario) {
           res.render("miPerfil" ,{usuario: usuario});
        })
        
    },
    
}



module.exports = miPerfilController