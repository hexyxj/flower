function myAjax(url,method){
    return new Promise((resolve,reject)=>{
        var xhr=null;
        if(window.XMLHttpRequest){
            xhr=new XMLHttpRequest();
        }else{
            xhr=new ActiveXObject("Microsoft.XMLHTTP");
        }
        xhr.open(url,method,true);
        if(method.toLowerCase()=="post"){
            xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
        }
        xhr.onreadystatechange=function(){
            if(xhr.readyState==4){
                if(xhr.status==200){
                    resolve();
                }else{
                    reject();
                }
            }
        }
        xhr.send();

    })
}