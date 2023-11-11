console.log('hello world');
const express=require('express');
const mongoose=require('mongoose');
//import
const authRouter=require("./routes/auth");
const PORT=3000;

const DB='mongodb+srv://shashikantkaushik:shashikant@cluster0.l7o4rfs.mongodb.net/?retryWrites=true&w=majority';
const app=express();
app.use(express.json());
app.use(authRouter);

//app.post("/api", (req, res) => {
//  const { name, email, password } = req.body;
//  // Destructuring 'name' from 'req.body'
//  // Your code here
//});
mongoose.connect(DB).then(()=>{
console.log('Connection is Successful to MongoDB');
})
.catch((e)=>{
console.log(e);
});



//initialize


//get request
//app.get('/hello',(req,res)=>{
//res.send('hello World');
//});
//
//app.get('/',(req,res)=>{
//res.json({name:"shashi"});
//
//});

app.listen(PORT,"0.0.0.0",()=>{
console.log(`connnected at port ${PORT}`);
});
//0.0.0.0 bcz it can be accessed from anywhere it is an ip address
//local host acess if we do not specify ip
//