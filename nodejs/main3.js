var mysql = require('mysql');
const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

var main_board = "SELECT * FROM member, board WHERE member.id = board.member_id ORDER BY board.board_id;";

const config = {
	host    : "db1.cac4pv4f8grd.ap-northeast-2.rds.amazonaws.com",
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


app.set('view engine', 'ejs');


app.get('/board.html.js', function (req, res, next) {
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
});

app.get('/write.html.js', function (req, res, next) {
            res.render('write.html',
                    function(err, html){
                    if (err){
                            console.log(err)
                    }
                    res.end(html)
		    });
});

app.listen(3000);

app.engine('html',require('ejs').renderFile);


