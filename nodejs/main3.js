var mysql = require('mysql');
var http = require('http');
const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

var main_board = 'SELECT member.id, member.email, member.full_name, member.department_name, board.board_id, board.member_id, board.title, board.content, board.time FROM member, board WHERE member.id = board.member_id;';

const config = {
	host    : "10.0.0.12",
        user    : "root",
        password: "It12345!",
        port    : 3306
}
var connection = mysql.createConnection(config);

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

//app.get('', (req, res) => {
//	res.sendFile(__dirname + '/main.html')
//})

app.set('view engine', 'ejs');
//app.engine('html',require('ejs').renderFile);

//app.use('view engine','ejs');

        var ID = '';
        var Title = '';
        var Content = '';
        var Time = '';

app.get('/board.html.js', function (req, res, next) {
//    res.render('main3.js')  
	var rows = '';
	connection.query(main_board, function (err, rows) {
        if (!err) {
		
            	res.render('board.html',
			{rows: rows },
			function(err, html){
			if (err){
				console.log(err)
			}
			res.end(html)
		});
		
            }else{
                res.statusCode=302
                res.setHeader("Location","http://www.kb97.xyz/404.html");
                res.end();
            }
    });	return(rows);
	connection.end();
}).listen(3000);

 app.engine('html',require('ejs').renderFile);
app.get('/board.html.js', function(req, res) {
	res.render('board.html')
});


