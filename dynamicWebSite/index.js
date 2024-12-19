const express = require('express');
const hbs =require('hbs');

const app = express();

app.get("/", function (req,res){
    res.send("Hello World!")
})

app.set('view engine', 'hbs');


app.get("/about-us", function(req,res){
    res.send(`
        <!DOCTYPE>
        <html>
        <head>
        </head>
        <body>
        <body>
        </html>
        `)
})

app.listen(3000,function(){
    console.log("Server has started")
})