const express = require('express');
const router = express.Router();

const sql = require('../utils/sql');

router.get('/', (req, res) => {
   
    console.log('at the main route');

    let query = `SELECT ID, Name, Image, Category FROM work WHERE ID <= 4`;

    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }

        console.log(result); 
         res.render('index', { works: result });
    })
})

router.get('/portfolio', (req, res) => {
   
    console.log('at the work route');

    let query = `SELECT * FROM work`;

    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }

        console.log(result); 
         res.render('portfolio', { works: result });
    })
})

router.get('/users/:id', (req, res) => {
    console.log('hit a dynamic route!');
    console.log(req.params.id);

    let query = `SELECT * FROM work WHERE ID ="${req.params.id}"`;

    sql.query(query, (err, result) => {
    if (err) { throw err; console.log(err); }
    
    console.log(result); 
    
    
    //which isn't anything we can work with
    result[0].Description = result[0].Description.split(",").map(function(item) {
        item = item.trim(); // remove the extra spaces from each word

        return item;
    })

    // console.log('after split: ', result[0]);

    res.json(result); // sends the DB query back to the broswer
})
})

module.exports = router;