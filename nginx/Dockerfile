FROM    nginx

COPY    default.conf /etc/nginx/conf.d/
COPY    login.html /usr/share/nginx/html/
COPY    main.html /usr/share/nginx/html/
COPY    table.css /usr/share/nginx/html/
COPY    temp /usr/share/nginx/html/

RUN	mv /usr/share/nginx/html/temp/* /usr/share/nginx/html/
RUN	rm -rf /usr/share/nginx/html/temp

EXPOSE  80
