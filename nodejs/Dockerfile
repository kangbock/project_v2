FROM amazon/aws-lambda-nodejs

RUN	yum update && yum install -y vim
RUN	npm install -y mysql express http
RUN	npm install --save express
RUN	npm install -y ejs
RUN	mkdir /var/task/views

COPY	/root/project/nodejs/main.js /var/task/
COPY	/root/project/nodejs/main3.js /var/task/
COPY	/root/project/nodejs/package.js /var/task/
COPY	/root/project/nodejs/board.html /var/task/views
COPY	/root/project/nodejs/login.js /var/task/

CMD [ "app.handler" ]

EXPOSE	3000
