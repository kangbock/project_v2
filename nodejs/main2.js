var mysql = require('mysql');

var connection = mysql.createConnection({
        host    : "10.0.0.12",
        user    : "root",
        password: "It12345!",
        port    : 3306,
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


          connection.query(`SELECT*FROM member`,function(error2, topic){
          // topic id중 queryData.id값과 일치하는 데이터를 가져와 topic에 담음
            
            if(error2){throw error2;}
            
            var title = topic[0].title; // topic은 배열로 값이 전달됨
            var description = topic[0].description;
            var list = template.list(topics);
            var html = template.HTML(title, list,            
                  `<h2>${title}</h2>${description}`,
                  ` <a href="/create">create</a>
                    <form action="delete_process" method="post">
                      <input type="submit" value="delete">
                    </form>`
            );
            
            response.writeHead(200);
            response.end(html);
          });

connection.end();
