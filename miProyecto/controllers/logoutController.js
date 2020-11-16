let logoutController = {
    logout: function(req, res) {
        req.session.destroy();
        return res.redirect ('home');
    },
}

module.exports = logoutController;