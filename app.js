// Import the express module
const express = require('express');

// Import the routes from index.js
const routes = require('./index.js');

// Create an instance of the express application
const app = express();

// Set the view engine to ejs
app.set('view engine', 'ejs');

// Use the routes defined in index.js
app.use('/', routes);

// Start the server on port 3000
app.listen(3000, () => {
  console.log('Server started on port 3000');
});