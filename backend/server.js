const express = require('express');
const mysql = require('mysql');
const cors = require('cors');

const app = express()
app.use(cors())

const db = mysql.createConnection({
    host: "localhost",
    user: "root",
    password:'12345678',
    database: 'university'
})

app.get('/', (re, res)=> {
    return res.json("From backend side")
})

app.get('/Majors', (req, res)=> {
    const sql = "SELECT * FROM Major";
    db.query(sql, (err, data)=>{
        if(err) return res.json(err)
        return res.json(data)
    })
})

app.listen(3005, ()=> {
    console.log("listening");
})