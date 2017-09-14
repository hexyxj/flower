(() => {
    function myAjax(method,url) {
        return new Promise((resolve, reject) => {
            var xhr = null;
            if (window.XMLHttpRequest) {
                xhr = new XMLHttpRequest();
            } else {
                xhr = new ActiveXObject("Microsoft.XMLHTTP");
            }
            xhr.open( method,url, true);
            if (method.toLowerCase() == "post") {
                xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
            }
            xhr.onreadystatechange = function () {
                if (xhr.readyState == 4) {
                    if (xhr.status == 200) {
                        resolve(xhr.responseText);
                    } else {
                        reject("error:" + xhr.status);
                    }
                }
            };
            xhr.send(null);
        })
    }
    myAjax( "get","data/moreflower_load.php").then((data) => {
        var dataObj=JSON.parse(data);
        /* 草本植物 */
        var left="";    
        var right="";
        for(var obj of dataObj.herbage){
            left += `<li><a href="#">${obj.name}</a></li>`;
            right += `<li><a href="#"><img src="${obj.pic}"></a></li>`;
        }
        document.querySelector(".herbage .f-name-list").innerHTML=left;
        document.querySelector(".herbage .f-img-list").innerHTML=right;
        /* 木本植物 xylophyta */
        var left="";    
        var right="";
        for(var obj of dataObj.xylophyta){
            left += `<li><a href="#">${obj.name}</a></li>`;
            right += `<li><a href="#"><img src="${obj.pic}"></a></li>`;
        }
        document.querySelector(".xylophyta .f-name-list").innerHTML=left;
        document.querySelector(".xylophyta .f-img-list").innerHTML=right;
        /* 藤本植物 liana */
        var left="";    
        var right="";
        for(var obj of dataObj.liana){
            left += `<li><a href="#">${obj.name}</a></li>`;
            right += `<li><a href="#"><img src="${obj.pic}"></a></li>`;
        }
        document.querySelector(".liana .f-name-list").innerHTML=left;
        document.querySelector(".liana .f-img-list").innerHTML=right;
        /* 兰科植物 arethusa */
        var left="";    
        var right="";
        for(var obj of dataObj.arethusa){
            left += `<li><a href="#">${obj.name}</a></li>`;
            right += `<li><a href="#"><img src="${obj.pic}"></a></li>`;
        }
        document.querySelector(".arethusa .f-name-list").innerHTML=left;
        document.querySelector(".arethusa .f-img-list").innerHTML=right;
        /* 水生植物 hydrophyte */
        var left="";    
        var right="";
        for(var obj of dataObj.hydrophyte){
            left += `<li><a href="#">${obj.name}</a></li>`;
            right += `<li><a href="#"><img src="${obj.pic}"></a></li>`;
        }
        document.querySelector(".hydrophyte .f-name-list").innerHTML=left;
        document.querySelector(".hydrophyte .f-img-list").innerHTML=right;
    }).catch(data => {
        console.log(data);
    })
})();