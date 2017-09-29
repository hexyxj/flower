;(function(){
    var unameElement=document.querySelector("#uname");
    var unameMsg=document.querySelector("#uname-msg");
    var upwdElement=document.querySelector("#upwd");
    var upwdMsg=document.querySelector("#upwd-msg");
    var pwdElement=document.querySelector("#pwd");
    var pwdMsg=document.querySelector("#pwd-msg");
    var registerBtn=document.querySelector(".sign-in-btn");
    var unameFlag=false,upwdFlag=false;
    unameElement.onblur=function(){
        var uname=this.value;
        if(!uname){
            unameFlag=false;
            unameMsg.innerHTML="× 用户名不能为空";
            unameMsg.classList.add("wrong");
        }else if(!(/^\w{3,18}$/.test(uname))){
            unameFlag=false;
            unameMsg.innerHTML="× 格式错误";
            unameMsg.classList.add("wrong");
        }
        else{
            myAjax("get","data/check_uname.php?uname="+uname).then(data=>{
                var obj=JSON.parse(data);
                // console.log(obj);
                if(obj.code==1){
                    unameFlag=true;
                    unameMsg.classList.remove("wrong");
                    unameMsg.innerHTML="√ "+obj.msg;
                }else{
                    unameFlag=false;
                    unameMsg.classList.add("wrong");
                    unameMsg.innerHTML="× "+obj.msg;
                }
            });
        }
    }
    upwdElement.onblur=function(){
        var upwd = this.value;
        if(!upwd){
            upwdFlag=false;
            upwdMsg.innerHTML="× 密码不能为空";
            upwdMsg.classList.add("wrong");
        }else if(/^\w{6,18}$/.test(upwd)){
            upwdFlag=true;
            upwdMsg.innerHTML="√ 通过";
            upwdMsg.classList.remove("wrong");
        }else{
            upwdFlag=false;
            upwdMsg.innerHTML="× 格式错误";
            upwdMsg.classList.add("wrong");
        }
    }
    pwdElement.onblur=function(){
        var upwd = upwdElement.value;
        var pwd = this.value;
        if(upwd==pwd){
            upwdFlag=true;
            pwdMsg.innerHTML="√ 通过";
            pwdMsg.classList.remove("wrong");
        }else{
            upwdFlag=false;
            pwdMsg.innerHTML="× 两次密码不相同";
            pwdMsg.classList.add("wrong");
        }
    }
    registerBtn.onclick=function(e){
        var upwd=upwdElement.value;
        var uname=unameElement.value;
        var registerMsg=document.querySelector("#registerMsg");
        e.preventDefault();
        if(upwdFlag && unameFlag){
            myAjax("post","data/register.php","uname="+uname+"&upwd="+upwd).then(data=>{
                var obj=JSON.parse(data);
                if(obj.code==1){
                    registerMsg.classList.remove("reg-failed");
                    registerMsg.classList.add("reg-success");
                    registerMsg.innerHTML="注册成功,3秒后跳转主页..."
                    sessionStorage["uname"]=obj.uname;
                    sessionStorage["uid"]=obj.uid;
                    setTimeout(function(){
                        location.href="index.html"
                    },3000);
                }else{
                    registerMsg.classList.remove("reg-success");
                    registerMsg.classList.add("reg-failed");
                    registerMsg.innerHTML="注册失败,请检查..."
                }
            })
        }
    }
})();