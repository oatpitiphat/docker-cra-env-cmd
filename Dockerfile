# stage1 - build react app first 
FROM node:14.11-alpine as build
WORKDIR /app
COPY ./package.json /app/
RUN yarn --silent
COPY . /app
RUN yarn build

# stage 2 - build the final image and copy the react build files

FROM nginx:stable-alpine
COPY --from=build /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
