;(()=>{
    myAjax("GET","data/index_load.php").then((text)=>{
        var data=JSON.parse(text);
        console.log(data);
        /* 精彩推荐 */
        var html="";
        for(var obj of data.recommend){
            html+=`<li><a href="${obj.href}">${obj.title}</a></li>`;
        }
        document.querySelector(".slider-banner .article").innerHTML=html;
 
        /* 轮播图 */
        html="";
        for(var obj of data.sliderImg){
            html+=`<li><a href="${obj.href}"><img src="${obj.pic}" alt=""></a></li>`
        }
        document.querySelector(".slider-banner .banner-imgs").innerHTML=html;
        slider();

        /* 花卉大全 */
        //左边文字
        var htmll="";
        var htmlr="";
        for(var i=0;i<data.moreflowerArc.length;i++){
            var obj=data.moreflowerArc[i];
            if(i<=7){
                htmll+=`<li><a href="${obj.href}">${obj.title}</a></li>`;
            }else{
                htmlr+=`<li><a href="${obj.href}">${obj.title}</a></li>`;
            }
        }
        document.querySelectorAll(".moreflower .article")[0].innerHTML=htmll;
        document.querySelectorAll(".moreflower .article")[1].innerHTML=htmlr;
        //右边图片
        html="";
        for(var obj of data.moreflowerImgs){
            html+=`<li>
            <a href="#">
                <img src="${obj.pic}" alt="">
                <p class="img-name">${obj.name}</p>
            </a>
        </li>`;
        }
        document.querySelector(".moreflower .flower-img ul").innerHTML=html;
        
        
        /* 热门花卉 */
        html="";
        for(var obj of data.hotFlowers){
            html+=` <li>
            <a href="${obj.href}">
                <img src="${obj.pic}" alt="">
                <p class="title">${obj.target}</p>
                <p class="description">${obj.descr.slice(0,35)}...</p>
            </a>
        </li>`;
        }
        document.querySelector(".hotflower .daily-rec").innerHTML=html;
        /* 百花图谱 */
        html="";
        for(var i=0,l=data.indexAtlas.length;i<l;i++){
            var obj = data.indexAtlas[i];
            if(i==0 || i==l-1){
                html+=`<a class="flex-d big-img" href="${obj.href}">
                <img class="big-img" src="${obj.bpic}" alt="${obj.title}">
                <p>${obj.title.slice(0,20)}</p>
            </a>`;
            }else{
                html+=`<a class="flex-d" href="${obj.href}">
                <img src="${obj.spic}" alt="${obj.title}">
                <p>${obj.title.slice(0,10)}</p>
            </a>`;
            }
        }
        document.querySelector(".indexatlas .f-content").innerHTML=html;
        /* 多肉植物 */
        //左边图片
        html="";
        for(var obj of data.succulentImgs){
            html+=`<li>
            <a href="#">
                <img src="${obj.pic}" alt="">
                <p class="img-name">${obj.name}</p>
            </a>
        </li>`;
        }
        document.querySelector(".succulent .flower-img ul").innerHTML=html;
        //右边文字
        htmll="";
        htmlr="";
        for(var i=0;i<data.moreflowerArc.length;i++){
            var obj=data.moreflowerArc[i];
            if(i<=7){
                htmll+=`<li><a href="${obj.href}">${obj.title}</a></li>`;
            }else{
                htmlr+=`<li><a href="${obj.href}">${obj.title}</a></li>`;
            }
        }
        document.querySelectorAll(".succulent .article")[0].innerHTML=htmll;
        document.querySelectorAll(".succulent .article")[1].innerHTML=htmlr;
        /* 每日精选 */
        html="";
        for(var obj of data.dailyChoice){
            html+=` <li>
            <a href="${obj.href}">
                <img src="${obj.pic}" alt="">
                <p class="title">${obj.target}</p>
                <p class="description">${obj.descr.slice(0,35)}...</p>
            </a>
        </li>`;
        }
        document.querySelector(".dailychioce .daily-rec").innerHTML=html;

    });
    function slider(){
        /* banner slider */
        var bannerImgs=document.querySelector(".banner-imgs");
        var bannerInds=document.querySelector(".banner-inds");
        var newNode=bannerImgs.firstElementChild.cloneNode(true);
        bannerImgs.appendChild(newNode);
        var imgNum=bannerImgs.children.length;
        bannerInds.innerHTML=`<li></li>`.repeat(imgNum-1);
        bannerInds.firstElementChild.classList.add("hover");
        var TRANS=300;
        var imgLength=parseInt(window.getComputedStyle(bannerImgs.parentNode,null).width);
        bannerImgs.style.width=imgNum*imgLength+"px";
        var n=0;
       
        /* 自动滚动 */
        function moveElement(){
            n++;
            var left=imgLength*n;
            bannerImgs.style.left=-left+"px";
            bannerInds.children[n-1].classList.remove("hover");
            if(n == imgNum-1){
                bannerInds.children[0].classList.add("hover");
                setTimeout(function() {
                    bannerImgs.style.transition = "";
                    bannerImgs.style.left = 0;
                    n = 0;
                    setTimeout(function(){
                        bannerImgs.style.transition="all ." + TRANS / 100 + "s linear";
                    },100);
                },TRANS);
            }else{
                bannerInds.children[n].classList.add("hover");
            }
        }
       var timer = setInterval(moveElement, 2000 + TRANS);
        
       /* 鼠标悬停 */
       bannerImgs.parentNode.onmouseover=function(){
           clearInterval(timer);
           timer = null;
       }
       bannerImgs.parentNode.onmouseout=function(){
           timer = setInterval(moveElement, 2000 + TRANS);
       }
    
       /* 小圆点点击事件 */
       for(var i = 0 ,l =bannerInds.children.length ;i<l;i++){
           bannerInds.children[i].onclick=(function(index){
               return function(){
                   n=index;
                   bannerImgs.style.left=-n*imgLength+"px";
                   bannerInds.querySelector(".hover").classList.remove("hover");
                   bannerInds.children[index].classList.add("hover");
               };
           })(i);
       }
       /* 左右btn点击事件 */
    
       document.querySelector(".left-btn").onclick=function(){
           if(n>0){
               n--;
               bannerImgs.style.left=-n*imgLength+"px";
               bannerInds.children[n+1].classList.remove("hover");
               bannerInds.children[n].classList.add("hover");
           }else{
               bannerImgs.style.transition="";
               n=imgNum-1;
               bannerImgs.style.left=-n*imgLength+"px";
               setTimeout(function() {
                   bannerImgs.style.transition="all ." + TRANS / 100 + "s linear";
                   n--;
                   bannerImgs.style.left=-n*imgLength+"px";
                   bannerInds.children[0].classList.remove("hover");
                   bannerInds.children[n].classList.add("hover");
               }, 100);
    
           }
       };
       document.querySelector(".right-btn").onclick=function(){
        n++;
        bannerImgs.style.left=-n*imgLength+"px";  
        if(n<imgNum-1){
            bannerInds.children[n-1].classList.remove("hover");
            bannerInds.children[n].classList.add("hover");
        }else{
            bannerInds.lastElementChild.classList.remove("hover");
            bannerInds.firstElementChild.classList.add("hover");
            setTimeout(function(){
                    bannerImgs.style.transition = "";
                    bannerImgs.style.left = 0;
                    n = 0;
                    setTimeout(function(){
                        bannerImgs.style.transition="all ." + TRANS / 100 + "s linear";
                    },100);
            },TRANS);
        }
       };
    }
    
})();