FROM      node:alpine
RUN       mkdir employee
WORKDIR   /employee
COPY       . .
RUN       npm install
EXPOSE    80
CMD       [ "node", "app.js" ]
