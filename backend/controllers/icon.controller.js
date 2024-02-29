const iconschema = require('../models/icon.model');

const prologRequest = async(req,res) =>{
    const { exec } = require('child_process');
    exec("swipl -s ./db/Codigo.pl -g 'imprimir_causa_mal_funcionamiento("+req.params.id+")' -t halt.", (error, stdout, stderr) =>{
        if(error){
            console.log('error: '+ error.message);
            return res.status(400).send('Error: ' + error.message);
        }
        if(stderr){
            console.log('stderr: ${stderr}');
            return res.status(400).send('stderr: '+ stderr);
        }
        return res.status(200).send('stdout: '+ stdout);
    });
};

module.exports = {prologRequest};