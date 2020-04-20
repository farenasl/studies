var express = require('express');
var router = express.Router();
const sqlite3 = require('sqlite3').verbose();

// Route to delete all trades
router.delete('/', function(req, res, next) {
    let db = new sqlite3.Database('./stockandtrades.db', (err) => {
        if (err) {
          console.error(err.message);
        }
        console.log('Connected to the stockandtrades database.');
    });

    let sql = 'DELETE FROM trades';
    //console.log(sql);

    db.run(sql, function(err) {
        if (err) {
          console.log(err.message);
        }
    });
  
    db.close();
    res.status(200).send();
});

module.exports = router;
