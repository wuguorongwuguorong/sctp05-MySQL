const express = require('express');
const hbs =require('hbs');
const wax = require('wax-on');

const app = express();

app.get("/", function (req,res){
    res.send("Hello World!")
})


app.set('view engine', 'hbs');

wax.on(hbs.handlebars);
wax.setLayoutPath('./views/layouts')

//route
app.get("/about-us", function(req,res){
    res.render('about-us');
})

app.listen(3000,function(){
    console.log("Server has started")
})