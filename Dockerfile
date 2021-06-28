FROM node:14.15 as prod 

EXPOSE 4550

COPY package*.json ./

RUN npm install --only=production && npm cache clean --force

COPY . .

CMD ["node", "."]

FROM prod as dev 

RUN npm install --only=development 
 
CMD ["npm" , "run" , "dev"]

FROM dev as test

CMD ["npm" , "run" , "test"]
