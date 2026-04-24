mkdir TestCase3
cd TestCase3
npm init -y
npm install express
npm install --save-dev @types/express
cat > index.js << 'EOF'
const express = require('express');

const app = express();
const PORT = 3000;

app.get('/health', (req, res) => {
  res.status(200).json({ status: 'OK' });
});

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
EOF
echo "node_modules/" > .gitignore
cd ..
git init
git add .
git commit -m "Initial setup of Express server with a basic health check endpoint"
git remote add origin https://github.com/pulkit1245/nodejs-api.git
ssh-keygen -t ed25519 -C "pulkit1245@github.com" -N "" -f ~/.ssh/id_ed25519
ssh-add ~/.ssh/id_ed25519
git remote set-url origin git@github.com:pulkit1245/nodejs-api.git
git branch -M main
git push -u origin main