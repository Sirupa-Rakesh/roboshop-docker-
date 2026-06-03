FROM node:20
#this creates and automatically moves to app
WORKDIR /app
COPY package.json .
COPY *.js .
RUN npm install
COPY . .


ENV REDIS_HOST="redis" \
     CATALOGUE_HOST="catalogue" \
     CATALOGUE_PORT="8080"
CMD ["node","server.js"]




    