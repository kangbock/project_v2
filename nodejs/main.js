var mysql = require('mysql');
var http = require('http');
const express = require('express');
const app = express();
const port = process.env.PORT || 3000;
var table = 'SELECT * from member'

var connection = mysql.createConnection({
        host    : "10.0.0.12",
        user    : "root",
        password: "It12345!",
        port    : 3306,
});

connection.connect(function(err) {
        if (err) {
                console.error("Database connection failed : " + err.stack);
                return;
        }

        console.log('Connected to database.');
});

connection.changeUser({
    database : 'project'
}, (err) => {
    if (err) {
      console.log('Error in changing database', err);
      return;
    }
    // Do another query
});

var member;
connection.query(table, function (error, results, fileds) {
        if (error) throw error;
        for(var i=0; i < results.length; i++)
        {
                console.log(results[i]);
        }

});

app.get('/', (req, res) => {
        res.json(
		{suceess : true}
        )
});

var content = function(req, res){
        res.end("member");
        res.writeHead(200);
}
var server = http.createServer(content);
server.listen(3000);



connection.end();
