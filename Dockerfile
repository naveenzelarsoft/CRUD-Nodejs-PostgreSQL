#FROM      node:alpine
#RUN       mkdir /employee
#WORKDIR   /employee
#COPY       . ./employee
#WORKDIR   /employee
#RUN       npm install
#EXPOSE    80
#CMD       [ "node", "app.js" ]

FROM      node:alpine
COPY       . ./employee
WORKDIR   /employee
RUN       npm install
EXPOSE    80
CMD      [ "node", "app.js" ]