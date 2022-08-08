FROM    nginx

COPY    default.conf /etc/nginx/conf.d/
COPY    login.html /usr/share/nginx/html/
COPY    main.html /usr/share/nginx/html/
COPY    table.css /usr/share/nginx/html/
ADD    temp/assets /usr/share/nginx/html/
ADD    temp/css /usr/share/nginx/html/
COPY    temp/index.html /usr/share/nginx/html/
ADD    temp/js /usr/share/nginx/html/


EXPOSE  80
