FROM node:20
#this creates and automatically moves to app
WORKDIR /app
COPY package.json .
COPY *.js .
RUN npm install

ENV MONGO="TRUE" \
MONGO_URL="mongodb://mongodb:27017/catalogue"
CMD ["node","server.js"]




    