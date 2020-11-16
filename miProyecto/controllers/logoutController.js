let logoutController = {
    logout: function(req, res) {
        req.session.destroy();
        res.clearCookie('userId');
        return res.redirect ('home');
    },
}

module.exports = logoutController;