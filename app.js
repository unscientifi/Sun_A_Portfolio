const express = require('express');
const path = require('path');
const hbs = require('hbs');

// set the port
const port = process.env.PORT || 3000;

const app = express();

app.use(express.static(path.join(__dirname, '/public')));
app.set('view engine', 'hbs');
app.set('views', path.join(__dirname, 'views'));

app.use('/', require('./routes/index'));

app.get('/', function (req, res) {
    res.render('index');
});

app.get('/about', function (req, res) {
    res.render('about');
});

app.get('/portfolio', function (req, res) {
    res.render('portfolio');
});

app.get('/contact', function (req, res) {
    res.render('contact');
});



app.get('/contact.php', (req, res) => {
    res.sendFile(path.join(__dirname + "/views/contact.php"));
})

//Error page 
app.use((req, res, next) => {
    var err = new Error(' Not Found');
    err.status = 404;
    err.customMessage = "Ooops! Something happened to your page!"

    next(err);
})

app.use((err, req, res, next) => {
    res.render('error', { data: err, layout: 'errorPage' });
})

app.listen(port, () => {
    console.log(`app is running on ${port}`);
})

