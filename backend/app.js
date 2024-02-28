const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const cors = require('cors');
require('dotenv').config();

//Body Parser
app.use(bodyParser.json());
//CORS
const corsOptions = require('./configurations/cors.configuration');
app.use(cors(corsOptions));

//Routers
app.use('/prolog',require('./routers/icon.router'));

//Server
const server = require('http').createServer(app);
server.listen(process.env.PORT, () => {
    console.log('Server is running on port '+ process.env.PORT);
});
app.get('/health_check',(req,res) => {
    res.status(200).send("OK");
});