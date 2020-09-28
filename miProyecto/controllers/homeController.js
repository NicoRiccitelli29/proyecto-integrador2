let homeController ={
    index: function(req, res) { 
        return res.render ('home' );
    },
    log: function(req, res) {
        return res.render ('homeLogueado');
    }
}

module.exports = homeController