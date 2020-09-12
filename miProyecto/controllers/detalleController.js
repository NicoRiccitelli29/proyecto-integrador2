let detalleController ={
    usuario: function(req, res) {
        return res.render('detalleUsuario');
    },
    post: function ( req, res){
        return res.render ('detallePost');
    }
}

module.exports = detalleController