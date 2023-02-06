const express = require('express');
const http = require('http');
//const cors = require('cors');
const app = express();

const port = process.env.port || 3000;

let server = http.createServer(app)
let io = require('socket.io')(server, /*{
    cors: {
        origin: ""
    }
}*/)


app.use(express.json())
//app.use(cors())

io.on('connection', (socket) => {
    console.log('There is connection')
    socket.on("/test", (msg) => {
        console.log(msg)
    })
})

server.listen(port, '0.0.0.0', () => {
    console.log('Server has started');
})