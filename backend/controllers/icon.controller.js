const iconschema = require('../models/icon.model');
const { exec } = require('child_process');
//Make the request to the prolog server to get the cause of the malfunction
const prologRequest = async(req,res) =>{ 
    const array = req.params.query.split(',');
    const results = [];
    try{
        await Promise.all(array.map(async element => {
            const {stdout, stderr} = await executeCommand(element);
            if(stderr){
                console.log(`stderr: ${stderr}`);
                throw new Error(`stderr: ${stderr}`);
            }
            results.push(stdout.trim());
        }));
        return res.status(200).send('Results: '+ results);
    }
    catch(error){
        return res.status(400).send('Error: '+ error.message);
    }
};
//Execute the prolog command to get the cause of the malfunction
const executeCommand = async(element) =>{
    return new Promise((resolve, reject) => {
        exec("swipl -s ./db/Codigo.pl -g 'imprimir_causa_mal_funcionamiento("+element+")' -t halt.", (error, stdout, stderr) =>{
        if(error){
            reject(error);
        }
        else{
            resolve({stdout,stderr});
        }
    })});
};
module.exports = {prologRequest};