#!/bin/bash

# Update package lists
sudo apt-get update

# Install Node.js and npm
curl -sL https://deb.nodesource.com/setup_14.x | sudo bash -
sudo apt-get install -y nodejs

# Create a new project directory
mkdir my_project
cd my_project

# Initialize a new Node.js project
npm init -y

# Install Express
npm install express

# Create and write server.js
echo "const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('Hello World!');
});

app.listen(port, () => {
  console.log(\`Server running at http://localhost:\${port}\`);
});" > server.js

# Install dotenv
npm install dotenv

# Start the server
node server.js