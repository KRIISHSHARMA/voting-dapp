FROM node:21.7.3-alpine

WORKDIR /app

copy . .

RUN npm install 

CMD ["npx","hardhat","node"]
