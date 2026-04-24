cd TestCase4
cat > Dockerfile << 'EOF'
FROM node:18-alpine
WORKDIR /app
COPY ../TestCase3/package*.json ./
RUN npm install
COPY ../TestCase3/index.js ./
EXPOSE 8080
CMD ["node", "index.js"]
EOF
cat > docker-compose.yml << 'EOF'
version: '3.8'
services:
  nodejs-api:
    build:
      context: ..
      dockerfile: TestCase4/Dockerfile
    ports:
      - "8080:8080"
    environment:
      - NODE_ENV=production
    restart: unless-stopped
EOF
docker-compose up -d --build
curl http://localhost:8080/health