const joi = require('joi');
const iconSchema = joi.object({
    code: joi.string().min(2).max(4).required().pattern(/^r([0-9])+$/),
    image: joi.string().min(3).max(100).required().pattern(/^([a-zA-Z0-9])+\.(jpg|png|jpeg)$/),
});
module.exports = {iconSchema};