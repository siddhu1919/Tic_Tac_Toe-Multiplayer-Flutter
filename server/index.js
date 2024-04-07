// Importing Necessary Modules
const express = require('express');
const http = require('http');

const app  = express();
const port = process.env.port || 3000;
var server = http.createServer(app);

var io = require('socket.io')(server);


///middleware
app.use(express.json());
server.listen(port,'0.0.0.0',()=>{
    console.log(`Server Started | Port : ${port}` );

});


