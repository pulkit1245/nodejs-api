mkdir -p TestCase5/.github/workflows
cd TestCase5/.github/workflows
cat > deploy.yml << 'EOF'
name: Deploy Application

on:
  push:
    branches:
      - main

jobs:
  deploy:
    runs-on: ubuntu-latest

    steps:
    - name: Checkout code
      uses: actions/checkout@v4

    - name: Setup Node.js
      uses: actions/setup-node@v4
      with:
        node-version: '18'

    - name: Install dependencies
      run: npm install

    - name: Build Docker image
      run: docker build -t nodejs-api .

    - name: Deploy application
      run: echo "Deploying application to server..."
EOF
cd ../../..
git add TestCase5/
git commit -m "This is the new CI/CD pipeline for CA2"
git push origin main