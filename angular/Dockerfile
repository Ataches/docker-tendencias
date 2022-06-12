### STAGE 1: Build ###
FROM node:12.7-alpine AS build
WORKDIR /usr/src/app/angular
COPY angular/package.json /usr/src/app/angular/package.json
RUN npm install
COPY angular/ .
RUN npm run build

### STAGE 2: Run ###
WORKDIR /usr/bin
FROM nginx:1.17.1-alpine
COPY angular/nginx.conf /etc/nginx/nginx.conf
COPY --from=build /usr/src/app/angular/dist/angular /usr/share/nginx/html
