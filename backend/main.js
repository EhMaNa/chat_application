const express = require('express');
const http = require("http");
const cors = require('cors');
const app = express();

const port = process.env.port || 3000;

let server = http.createServer(app)
let io = require('socket.io')(server, {
    cors: {
        origin: ""
    }
})


app.use(express.json())
app.use(cors())