console.log('hello world');
const express=require('express');
//iport
const authRouter=require("./routes/auth");
const PORT=3000;

const app=express();
app.use(authRouter);

//initialize

app.get('/hello',(req,res)=>{
res.send('hello World');
});

app.get('/',(req,res)=>{
res.json({name:"shashi"});

});

app.listen(PORT,"0.0.0.0",()=>{
console.log(`connnect ed at port ${PORT}`);
});
//0.0.0.0 bcz it can be accessed from anywhere it is an ip address
//local host acess if we do not specify ip
//