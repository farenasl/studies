var express = require('express');
var router = express.Router();
const sqlite3 = require('sqlite3').verbose();

// Routes related to trades
router.post('/', function(req, res, next) {
    // console.log(req.body)
    // console.log(req.body.id)
    let insertedId = 0;

    let db = new sqlite3.Database('./stockandtrades.db', (err) => {
        if (err) {
          console.error(err.message);
        }
        console.log('Connected to the stockandtrades database.');
    });

    let sql = `INSERT INTO trades values (${req.body.id},"${req.body.type}",${req.body.user.id},"${req.body.symbol}",${req.body.shares},${req.body.price},"${req.body.timestamp}")`;
    //console.log(sql);
    
    db.run(sql, async function(err) {
      if (err) {
        console.log(err.message);
        res.status(400).json();
      }
      else {
        // get the last insert id
        insertedId = this.lastID
        console.log(`A row has been inserted with rowid ${insertedId}`);
        res.status(201).json({id : insertedId});
      }
    });

    db.close();
});

router.get('/', function(req, res, next) {
    let db = new sqlite3.Database('./stockandtrades.db', (err) => {
        if (err) {
          console.error(err.message);
        }
        console.log('Connected to the stockandtrades database.');
    });

    let sql = `SELECT t.id, t.type, t.symbol, t.shares, t.price, t.timestamp, u.id as user_id, u.name user_name 
                FROM trades t INNER JOIN users u ON u.id = t.user ORDER BY t.id ASC`;

    db.all(sql, [], (err, rows) => {
        if (err)
          throw err;

        rows.forEach(function (row){
            row.user = {}
            row.user.id = row.user_id
            row.user.name = row.user_name
            delete row.user_id
            delete row.user_name
        })

        res.status(200).json(rows)
      });

    db.close();
});

router.get('/users/:userId',function(req, res, next) {
    let db = new sqlite3.Database('./stockandtrades.db', (err) => {
        if (err) {
          console.error(err.message);
        }
        console.log('Connected to the stockandtrades database.');
    });

    let sql = `SELECT t.id, t.type, t.symbol, t.shares, t.price, t.timestamp, u.id as user_id, u.name user_name
                FROM trades t INNER JOIN users u ON u.id = t.user WHERE t.user = ${req.params.userId} ORDER BY t.id ASC`;
    //console.log(sql);

    db.all(sql, [], (err, rows) => {
        if (err) {
          throw err;
        }

        rows.forEach(function (row){
            row.user = {}
            row.user.id = row.user_id
            row.user.name = row.user_name
            delete row.user_id
            delete row.user_name
        })
        
        res.status(rows.length === 0 ? 404 : 200).json(rows);
      });

    db.close();
});

module.exports = router;