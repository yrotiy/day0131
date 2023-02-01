const path =  require('path');
const users = require('../model/users.json'); 

const getSearchPwdHandle = (req, res)=>{
    res.sendFile(path.join(__dirname, '..', 'views', 'searchPwd.html'));
}
 
const postSearchPwdHandle = async (req, res)=>{
    // 비밀번호 찾기 : 아이디와 이름
   const { userName, userId } = req.body;
   console.log( userName, userId);

   const user =  await users.find( user => user.userName === userName && user.userId === userId);
   let resData = {}
   if( user ){
       resData = { success : true, message : user }
   }else{
       resData = { success : false, message : '아이디 또는 비밀번호를 확인하세요.'}
   }

   res.send(resData);
}

module.exports = { getSearchPwdHandle, postSearchPwdHandle }