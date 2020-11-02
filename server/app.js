const express = require('express')
const app = express();
// 引入cors模块,解决跨域
const cors = require('cors')
// const md5 = require('md5');
// 引入mysql模块连接数据库
const mysql = require('mysql');
const bodyParser = require('body-parser');
const { error } = require('console');
const { send } = require('process');
const pool = mysql.createPool({
    host: '127.0.0.1',
    port: 3306,
    user: 'root',
    password: '',
    database: 'gzmj',
    connectionLimit: 10
})
// app.use(cors({
//     origin: ['http://localhost:8080', 'http://127.0.0.1:8080']
// }))

app.use(bodyParser.urlencoded({
    extended:false
  }));

app.get('/list', (req, res) => {
    let sql = 'select * from gzmj_list';
    pool.query(sql, (err, results) => {
        if (err) throw err;
        res.send({ message: '查询成功', code: 1, results: results });
    })
})

app.get('/list2', (req, res) => {
    let sql = 'select * from gzmj_list2';
    pool.query(sql, (err, results) => {
        if (err) throw err;
        res.send({ message: '查询成功', code: 1, results: results });
    })
})

app.get('/details', (req, res) => {
    let id = req.query.id
    // console.log(id)
    let sql = 'select * from gzmj_details where id=?'
    pool.query(sql, [id], (err, results) => {
        if (err) throw err
        res.send({ message: "查询成功", code: 1, result: results[0] })
    })
})

app.get('/user',(req,res)=>{
    let uname = req.query.uname
    // console.log(uname)
    let sql='select touxiang,nicheng from gzmj_users where username=?';
    pool.query(sql,[uname],(err,results)=>{
        if(err) throw err
        res.send({message:"查询成功",code:1,results:results[0]})
    })
})


app.post('/register', (req, res) => {
    let username = req.body.username
    let password = req.body.password
    console.log(username,password)
    let sql = 'SELECT uid from gzmj_users where username=?'
    pool.query(sql, [username], (err, results) => {
        if (err) throw err
        if (results.length == 0) {
            sql = 'INSERT INTO gzmj_users(username,password) VALUES(?,MD5(?))'
            pool.query(sql, [username, password], (err, results) => {
                if (err) throw err
                res.send({ message: '注册成功', code: 1 })
            })
        } else {
            res.send({ message: '用户名已存在', code: 0 })
        }
    })
})


app.post('/login', (req, res) => {
    let username = req.body.username
    let password = req.body.password
    let sql = 'SELECT * FROM gzmj_users WHERE username=? AND password=MD5(?)'
    pool.query(sql, [username, password], (error, results) => {
        if (error) throw error
        if (results.length == 1) {
            res.send({ message: '登陆成功', code: 1, info: results[0] })
        } else {
            res.send({ message: '登陆失败', code: 0 })
        }
    })
})


app.get('/shoucang',(req,res)=>{
    let id=req.query.id
    let uname=req.query.uname
    let sql='select * from gzmj_shoucang where sc_id=? and sc_uname=?'
    pool.query(sql,[id,uname],(error,results)=>{
        if(error) throw error
        res.send({message:'查询成功',code:1,results:results})
    })
})

app.get('/addsc',(req,res)=>{
    let id = req.query.id
    let uname = req.query.uname
    // console.log(uname,id)
    let sql="INSERT INTO `gzmj_shoucang` VALUES (DEFAULT,?,?,DEFAULT)"
    pool.query(sql,[uname,id],(error,results)=>{
        if(error) throw error
        res.send({message:'插入成功',code:1,results:results})
    })
})

app.get('/remsc',(req,res)=>{
    let id = req.query.id
    let uname = req.query.uname
    // console.log(uname,id)
    let sql="DELETE FROM gzmj_shoucang WHERE sc_uname=? and sc_id=?"
    pool.query(sql,[uname,id],(error,results)=>{
        if(error) throw error
        res.send({message:'删除成功',code:1,results:results})
    })
})



app.listen(3000, () => {
    console.log('success')
});