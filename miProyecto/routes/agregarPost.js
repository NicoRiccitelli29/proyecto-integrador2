let express = require('express');
let router = express.Router();
let agregarPostController = require('../controllers/agregarPostController');

router.get('/', agregarPostController.addPost);
router.post('/', agregarPostController.storePost);

module.exports = router;