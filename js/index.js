window.onload=function(){
    slider();
};
function slider(){
    /* banner slider */
    var bannerImgs=document.querySelector(".banner-imgs");
    var bannerInds=document.querySelector(".banner-inds");
    var imgNum=bannerImgs.children.length;
    var TRANS=300;
    var imgLength=parseInt(window.getComputedStyle(bannerImgs.children[0],null).width);
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

