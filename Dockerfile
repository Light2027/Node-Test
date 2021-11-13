FROM debian:jessie

WORKDIR /app

# Install Node JS
RUN apt update
RUN apt -y install curl
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - 
RUN apt --force-yes -y install nodejs

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT=8080

EXPOSE 8080

CMD ["npm", "start"]