const router = require('express').Router();
const multer =  require('multer');
const upload = multer();
const iconcontroller = require('../controllers/icon.controller');

router.get('/:id',upload.none(),iconcontroller.prologRequest);

module.exports = router;