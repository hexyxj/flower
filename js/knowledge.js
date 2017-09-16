;(() => {
    myAjax("GET", "data/knowledge_load.php").then(data => {
        var data = JSON.parse(data);
        loadData(document.querySelector(".family"),data.family);
        loadData(document.querySelector(".acrobatics"),data.acrobatics);
        loadData(document.querySelector(".health"),data.health);
        loadData(document.querySelector(".waterplanting"),data.waterplanting);
        loadData(document.querySelector(".bonsai"),data.bonsai);
        loadData(document.querySelector(".balcony"),data.balcony);
    })

    function loadData(elem, data) {
        var left = "";
        var right1 = "";
        var right2 = "";
        for (var i = 0, l = data.length; i < l; i++) {
            var obj = data[i];
            if (i <= 3) {
                left += ` <li>
                    <a href="${obj.href}"><img src="${obj.pic}" alt="${obj.title}"></a>
                    <p><a href="${obj.href}">${obj.title.slice(0,11)}</a></p>
                </li>`;
            } else if (i <= 11) {
                right1 += ` <li><a href="${obj.href}">${obj.title}</a></li>`
            }else {
                right2 += ` <li><a href="${obj.href}">${obj.title}</a></li>`
            }
        }
        elem.querySelector(".img-c").innerHTML = left;
        var article = elem.querySelectorAll(".article-d");
        article[0].innerHTML = right1;
        article[1].innerHTML = right2;
    }
})();