/*jslint node:true*/

"use strict";

var express = require('express');
var bodyParser = require('body-parser');
var sys = require('sys');
var exec = require('child_process').exec;
var app = express();
var child;

// Configure body-parser
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));     // Notice because option default will flip in next major; http://goo.gl/bXjyyz

app.get('/webhook', function (req, res) {
    if (req.body.repository.url === 'https://github.com/theotheu/hook-test') {
        console.log('>>>>>req', req.body, '<<<<<<');
        console.log('Now checkout the repo');
    }
    res.send({});
});

app.all('*', function (req, res) {
    res.send({msg: 'Nothing here. This is the webhook for github'});
});
app.listen(3333);
