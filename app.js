const express = require('express');
const path = require('path');
const hbs = require('hbs');
const nodemailer = require('nodemailer');

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

app.post('/send', function (req, res) {

  // create reusable transporter object using the default SMTP transport
  let transporter = nodemailer.createTransport({
    host: 'gmail',
    port: 587,
    secure: false, // true for 465, false for other ports
    auth: {
        user: 'ryansunportfolio@gmail.com', // generated ethereal user
        pass: 'RyanSun11!'  // generated ethereal password
    },
    tls:{
      rejectUnauthorized:false
    }
});

  // setup email data with unicode symbols
  let mailOptions = {
      from: '"Ryan Sun" <ryansunportfolio@gmail.com>', // sender address
      to: 'ryansun1111@gmail.com', // list of receivers
      subject: 'Nodemailer Test', // Subject line
      text: 'Hello', // plain text body
      html: '<b>Thanks for your message. I will get back to you within 24 hours.</b>' // html body
    };

//   console.log("Message sent: %s", info.messageId);
//   console.log("Preview URL: %s", nodemailer.getTestMessageUrl(info));
    transporter.sendMail(mailOptions, (error, info) => {
    if (error) {
      console.log(error);
    } else {
      console.log('Email has been sent: %s ' + info.messageId);
    }
  });  
  

res.render('contact', { msg:'Email has been sent' });

});


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

