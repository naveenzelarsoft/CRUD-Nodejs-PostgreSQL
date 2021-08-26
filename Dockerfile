FROM      node:alpine
RUN       mkdir employee
WORKDIR   /employee
COPY       . .
WORKDIR   /employee
RUN       npm install
EXPOSE    80
CMD       [ "node", "app.js" ]
