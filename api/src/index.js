const express = require('express');
const mysql = require('mysql');

const app = express();

const connection = mysql.createConnection({
  host: 'mysql-container',  //or IPAddress
  user: 'root',
  password: 'marod',
  database: 'marod'
});

connection.connect();

app.get('/constelacoes', function(req, res) {
  connection.query('SELECT * FROM constelacoes', function (error, results) {
    if (error) { 
      throw error;
    };
    
    res.send(results.map(item => ({ name: item.name, estrelaBig: item.estrelaBig })));
  });
});

app.listen(9001, '0.0.0.0', function() {
  console.log('Listening on port 9001');
})
