FROM node:18-alpine
WORKDIR /app
COPY TestCase3/package*.json ./
RUN npm install
COPY TestCase3/index.js ./
EXPOSE 8080
CMD ["node", "index.js"]