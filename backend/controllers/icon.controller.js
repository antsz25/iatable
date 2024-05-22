const { exec } = require('child_process');

// Make the request to the Prolog server to get the cause of the malfunction
const prologRequest = async (req, res) => { 
    const array = req.params.query.split(',');
    const elementsString = array.map(element => `'${element}'`).join(',');
    
    try {
        const { stdout, stderr } = await executeCommand(elementsString);
        if (stderr) {
            console.log(`stderr: ${stderr}`);
            throw new Error(`stderr: ${stderr}`);
        }
        const results = stdout.trim().split('\n');
        return res.status(200).send('Results: ' + results);
    } catch (error) {
        return res.status(400).send('Error: ' + error.message);
    }
};

// Execute the Prolog command to get the cause of the malfunction
const executeCommand = async (elementsString) => {
    return new Promise((resolve, reject) => {
        exec(`swipl -s ./db/Codigo.pl -g "imprimir_causa_mal_funcionamiento([${elementsString}])" -t halt.`, (error, stdout, stderr) => {
            if (error) {
                reject(error);
            } else {
                resolve({ stdout, stderr });
            }
        });
    });
};

module.exports = { prologRequest };
