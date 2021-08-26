FROM      node:alpine AS builder
COPY       . ./employee
WORKDIR   /employee
RUN       npm install
CMD      [ "node", "app.js" ]