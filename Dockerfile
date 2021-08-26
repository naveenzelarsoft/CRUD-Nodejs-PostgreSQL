FROM      node:alpine AS builder
COPY       . ./frontend
WORKDIR   /frontend
RUN       npm install

FROM       nginx
RUN        rm /usr/share/nginx/html/*
CMD        mkdir /usr/share/nginx/html/frontend
COPY      --from=builder ./frontend /usr/share/nginx/html/frontend
RUN        rm /etc/nginx/conf.d/default.conf
COPY       employees.conf /etc/nginx/conf.d
EXPOSE     80
CMD        /usr/sbin/nginx -g "daemon off;"