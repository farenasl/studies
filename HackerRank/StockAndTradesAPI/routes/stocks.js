var express = require('express');
var router = express.Router();
const sqlite3 = require('sqlite3').verbose();

// Routes related to stocks
router.get('/:symbol/trades', function(req, res, next) {
    let db = new sqlite3.Database('./stockandtrades.db', (err) => {
        if (err) {
          console.error(err.message);
        }
        console.log('Connected to the stockandtrades database.');
    });

    let sql = `SELECT * FROM trades WHERE symbol = '${req.params.symbol}'`;
    //console.log(sql);

    db.all(sql, [], (err, rows) => {
        if (err) {
          throw err;
        }
        
        if (rows.length > 0) {
            sql = `SELECT t.id, t.type, t.symbol, t.shares, t.price, t.timestamp, u.id as user_id, u.name user_name
                    FROM trades t INNER JOIN users u ON u.id = t.user
                    WHERE t.symbol = '${req.params.symbol}' 
                        AND t.type = '${req.query.type}' 
                        AND DATE(t.timestamp) between '${req.query.start}' 
                            AND '${req.query.end}' 
                    ORDER BY t.id ASC`;
        
            db.all(sql, [], (err, rows2) => {
                if (err) {
                    throw err;
                }

                rows2.forEach(function (row){
                    row.user = {}
                    row.user.id = row.user_id
                    row.user.name = row.user_name
                    delete row.user_id
                    delete row.user_name
                })
                
                if (rows2.length > 0)
                    res.status(200).json(rows2)
                else
                    res.status(200).json()
            });
        }
        else
            res.status(404).json()
    });

    db.close();
});

router.get('/:symbol/price', function(req, res, next) {
    let db = new sqlite3.Database('./stockandtrades.db', (err) => {
        if (err) {
          console.error(err.message);
        }
        console.log('Connected to the stockandtrades database.');
    });

    let sql = `SELECT * FROM trades WHERE symbol = '${req.params.symbol}'`;
    //console.log(sql);

    db.all(sql, [], (err, rows) => {
        if (err) {
          throw err;
        }
        
        if (rows.length > 0) {
            sql = `SELECT * FROM trades WHERE symbol = '${req.params.symbol}' and DATE(timestamp) between '${req.query.start}' and '${req.query.end}' ORDER BY id ASC`;
        
            db.all(sql, [], (err, rows2) => {
                if (err) {
                throw err;
                }
                
                if (rows2.length > 0) {
                        sortedRows = rows2.sort( 
                            function(a, b) {
                               return parseFloat(b['price']) - parseFloat(a['price']);
                            }
                        )
                    res.status(200).json({symbol: req.params.symbol, highest_price: sortedRows[0].price, lowest_price: sortedRows[rows2.length - 1].price })
                }
                else
                    res.status(200).json({message: "There are no trades in the given date range"})
            });
        }
        else
            res.status(404).json()
    });

    db.close();
});

module.exports = router;