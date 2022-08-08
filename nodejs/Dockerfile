FROM amazon/aws-lambda-nodejs

RUN	yum update && yum install -y vim
RUN	npm install -y mysql express http
RUN	npm install --save express
RUN	npm install -y ejs
RUN	mkdir /var/task/views

COPY	main.js /var/task/
COPY	main3.js /var/task/
COPY	package.js /var/task/
COPY	board.html /var/task/views
COPY	login.js /var/task/

CMD [ "app.handler" ]

EXPOSE	3000
