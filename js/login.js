;
(() => {
  var loginReg = document.querySelector(".login_and_register");
  var loginBox = document.querySelector(".login-box");
  var signUp = document.querySelector(".sign-up");
  if (sessionStorage["uname"] && sessionStorage["uid"]) {
    loginReg.innerHTML = `<p>欢迎回来!  ${sessionStorage["uname"]} <a href="#" class="login-out">退出</a></p>`;
  } else {
    loginReg.innerHTML = `<a href="#" class="login-btn">登录</a> | <a href="register.html" class="register-btn">注册</a>`;
  }
  loginReg
    .addEventListener("click", function (e) {
      e.preventDefault();
      if (e.target.classList.contains("login-btn")) {
        loginBox.style.display = "block";
        /* document.body.addEventListener("click",function(e){
          if(!e.target.classList.contains(".sign-up")){
            signUp.style.display = "none";
            
          }
        }) */
      } else if (e.target.classList.contains("register-btn")) {
        console.log("注册");
      }else if(e.target.classList.contains("login-out")){
        console.log("退出");
        sessionStorage.removeItem("uname");
        sessionStorage.removeItem("uid");
        history.go(0);
      }
    });
    loginBox.addEventListener("click", function (e) {
    e.preventDefault();
    if (e.target.classList.contains("sign-up-close")) {
      loginBox.style.display = "none";
    }else if(e.target.classList.contains("sign-up-bg")){
      loginBox.style.display = "none";
    }else if (e.target.classList.contains("sign-up-button")) {
      var uname = signUp.uname.value;
      var upwd = signUp.upwd.value;
      var xhr = null;
      if (window.XMLHttpRequest) {
        xhr = new XMLHttpRequest();
      } else {
        xhr = new ActiveXObject("Microsoft.XMLHTTP");
      }
      xhr.open("post", "data/login.php", true);
      xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
      xhr.onreadystatechange = function () {
        if (xhr.readyState == 4) {
          if (xhr.status == 200) {
            console.log(xhr.responseText);
            var obj=JSON.parse(xhr.responseText);
            if(obj.code==1){
              sessionStorage["uname"]=obj.uname;
              sessionStorage["uid"]=obj.uid;
              signUp.style.display="none";
              history.go(0);
            }else{
            }
          }
        }
      };
      xhr.send("uname="+uname+"&upwd="+upwd);
    }
  })
})();