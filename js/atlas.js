;(()=>{
    var currentPage=1;
    myAjax("get","data/atlas_load.php?currentPage="+currentPage)
    .then(data=>{
        var jsonObj=JSON.parse(data);
        console.log(jsonObj);
        var clHtml=["","","",""];
        var column = document.querySelectorAll(".main .column");
        for (var i = 0, l = jsonObj.length; i < l; i++) {
            var obj = jsonObj[i];
            clHtml[i % 4] += 
            `<div class="box">
                <a class="waterfall-box" href="${obj.href}"> 
                    <img src="${obj.pic}" alt="${obj.title}">             
                    <div class="desc">${obj.descr}</div> 
                </a>
            </div>`;
        }
        column[0].innerHTML=clHtml[0];
        column[1].innerHTML=clHtml[1];
        column[2].innerHTML=clHtml[2];
        column[3].innerHTML=clHtml[3];
        currentPage++;
        window.onscroll =  masonry;
    });
    // function masonry() {
        function masonry() {
            var column = document.querySelectorAll(".main .column");
            var offset = [];
            for (var i = 0, l = column.length; i < l; i++) {
                offset.push(getOffset(column[i].lastElementChild));
            }
            /* 底部元素距离document顶部的最小高度 */
            var minHeight = Math.min.apply(null, offset);
            var index = offset.indexOf(minHeight);
            /* 视口高度 */
            var clientHeight = document.documentElement.clientHeight;
            /* 滚动高度 */
            var scrollHeight = document.body.scrollTop||document.documentElement.scrollTop;
            /* 最小高度元素局部视口底部距离 */
            var distance = (scrollHeight+clientHeight)-minHeight;
            /* 加载数据 */
            
            if (distance > 200) {
                window.onscroll=null;
                myAjax("get","data/atlas_load.php?currentPage="+currentPage)
                .then(data=>{
                   var  jsonObj=JSON.parse(data);
                   console.log(jsonObj);
                    if(jsonObj.length==0){
                        window.onscroll=null;
                        console.log("scroll end");
                        return;
                    }
                    for (var i = 0, l = jsonObj.length; i < l; i++) {
                        var obj = jsonObj[i];
                        column[(i+index) % 4].innerHTML += 
                        `<div class="box">
                            <a class="waterfall-box" href="${obj.href}"> 
                                <img src="${obj.pic}" alt="${obj.title}">             
                                <div class="desc">${obj.descr}</div> 
                            </a>
                        </div>`;
                    }
                    currentPage++;
                    window.onscroll=masonry;
                });
            }
        }
    // }
     /* 获取元素底部距离document顶部的距离 */
     function getOffset(elem) {
        var total = elem.offsetHeight;
        total += elem.offsetTop;
        while (elem.offsetParent) {
            elem = elem.offsetParent;
            total += elem.offsetTop;
        }
        return total;
    }   
})();