let miPerfilController ={

    perfil: function(req, res, next){
        let perfilUsuario = req.params.id
        db.Usuarios.findOne(
            {
                where: [
                    { id: perfilUsuario },
                    
                ],
                include: [ 
                    
                    {
                        association: "posteo"
                    },
                    
                ]
            }
        )
        .then(function(Usuarios) {
           res.render("miPerfil" ,{usuario: Usuarios});
        })
        
    },
    
}



module.exports = miPerfilController