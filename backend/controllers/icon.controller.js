const { exec } = require('child_process');

// Make the request to the Prolog server to get the cause of the malfunction
const prologRequest = async (req, res) => { 
    const array = req.params.query.split(',');
    let causas = [
        { id:'r1', mensaje: "Luz de carretera encendida."},
        { id:'r2', mensaje: "Luz de circulación diurna activada."},
        { id:'r3', mensaje: "Intermitente derecho encendido."},
        { id:'r4', mensaje: "Intermitente izquierdo encendido."},
        { id:'r5', mensaje: "Motor en marcha."},
        { id:'r6', mensaje: "Regulador de velocidad regulado. Control de crucero adaptativo conectado y activo."},
        { id:'r7', mensaje: "El ABS no funciona correctamente."},
        { id:'r8', mensaje: "Avería en el sistema de airbags y pretensores de los cinturones."},
        { id:'r9', mensaje: "Nivel del tanque de lava cristales bajo."},
        { id:'r10', mensaje: "Nivel de aceite insuficiente."},
        { id:'r11', mensaje: "Avería en el ESC."},
        { id:'r12', mensaje: "Fallo en el alumbrado del vehículo."},
        { id:'r13', mensaje: "Presión de inflado de los neumáticos demasiado baja."},
        { id:'r14', mensaje: "Avería en el catalizador."},
        { id:'r15', mensaje: "Pastillas de freno delanteras desgastadas."},
        { id:'r16', mensaje: "Depósito de combustible casi vacío."},
        { id:'r17', mensaje: "Precalentamiento del motor diesel."},
        { id:'r18', mensaje: "Cinturón de seguridad desabrochado."},
        { id:'r19', mensaje: "Cajuela abierta."},
        { id:'r20', mensaje: "Puerta abierta."},
        { id:'r21', mensaje: "Cambio de doble embrague DSG sobrecalentado."},
        { id:'r22', mensaje: "Falla de batería."},
        { id:'r23', mensaje: "Falla de la dirección asistida electromecánica."},
        { id:'r24', mensaje: "Control de crucero adaptativo (ACC) no disponible."},
        { id:'r25', mensaje: "Freno de mano puesto."},
        { id:'r26', mensaje: "Nivel de aceite del motor bajo o avería en el sistema de aceite del motor."},
        { id:'r27', mensaje: "Filtro de partículas diesel saturado de hollín."},
        { id:'r28', mensaje: "Avería en el cambio automático."},
        { id:'r29', mensaje: "Estado de carga de la batería móvil."},
        { id:'r30', mensaje: "Régimen del motor limitado."},
        { id:'r31', mensaje: "Avería en el sistema híbrido."},
        { id:'r32', mensaje: "ACC activo. Vehículo por delante."},
        { id:'r33', mensaje: "Luz trasera antiniebla encendida."},
        { id:'r34', mensaje: "Tapón del depósito de combustible abierto."},
        { id:'r35', mensaje: "ACC activo. Ningún vehículo por delante."},
        { id:'r36', mensaje: "Asistente de luz de carretera conectado."},
        { id:'r37', mensaje: "Sistema Start-Stop disponible."},
        { id:'r38', mensaje: "Preaviso de servicio."},
        { id:'r39', mensaje: "Motor en marcha con diesel."},
        { id:'r40', mensaje: "Temperatura exterior inferior a +4º C."}
    ]
    try {
        const { stdout, stderr } = await executeCommand(array);
        if (stderr) {
            console.log(`stderr: ${stderr}`);
            throw new Error(`stderr: ${stderr}`);
        }
        const results = stdout.trim().split('\n');
        if(results.includes('CODE 404')){
            const individuales =[];
            array.forEach(element => {
                let objeto = causas.filter(x=> x.id == element);
                individuales.push(objeto);
            });
            return res.status(400).send(individuales.flat(1));
        }
        return res.status(200).send(results);
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