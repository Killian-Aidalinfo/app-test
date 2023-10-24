from node:lts-alpine

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
COPY start.sh ./
RUN chmod +x ./start.sh
ENTRYPOINT [ "start.sh" ]