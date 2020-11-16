let express = require("express");
let router = express.Router();
let detalleUsuarioController = require('../controllers/detalleUsuarioController');

router.get("/:id", detalleUsuarioController.index);

module.exports = router;