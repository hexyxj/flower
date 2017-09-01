window.onload = function () {
    masonry();
}

function masonry() {

    var jsonObj = [
        {
            'fname': '使君子',
            'href': '#',
            'src': 'images/moreflower/moreflower_ (3).jpg',
            'desc': '它有一个别致的名字，叫做“使君子”，人们大多知晓它的药物作用，重视它的果实，其实谦谦君子也有温润的外表。'
        }, {
            'fname': '使君子',
            'href': '#',
            'src': 'images/moreflower/moreflower_ (4).jpg',
            'desc': '它有一个别致的名字，叫做“使君子”，人们大多知晓它的药物作用，重视它的果实，其实谦谦君子也有温润的外表。'
        }, {
            'fname': '使君子',
            'href': '#',
            'src': 'images/moreflower/moreflower_ (5).jpg',
            'desc': '它有一个别致的名字，叫做“使君子”，人们大多知晓它的药物作用，重视它的果实，其实谦谦君子也有温润的外表。'
        }, {
            'fname': '使君子',
            'href': '#',
            'src': 'images/moreflower/moreflower_ (6).jpg',
            'desc': '它有一个别致的名字，叫做“使君子”，人们大多知晓它的药物作用，重视它的果实，其实谦谦君子也有温润的外表。'
        }, {
            'fname': '使君子',
            'href': '#',
            'src': 'images/moreflower/moreflower_ (7).jpg',
            'desc': '它有一个别致的名字，叫做“使君子”，人们大多知晓它的药物作用，重视它的果实，其实谦谦君子也有温润的外表。'
        }, {
            'fname': '使君子',
            'href': '#',
            'src': 'images/moreflower/moreflower_ (8).jpg',
            'desc': '它有一个别致的名字，叫做“使君子”，人们大多知晓它的药物作用，重视它的果实，其实谦谦君子也有温润的外表。'
        }, {
            'fname': '使君子',
            'href': '#',
            'src': 'images/moreflower/moreflower_ (9).jpg',
            'desc': '它有一个别致的名字，叫做“使君子”，人们大多知晓它的药物作用，重视它的果实，其实谦谦君子也有温润的外表。'
        }, {
            'fname': '使君子',
            'href': '#',
            'src': 'images/moreflower/moreflower_ (10).jpg',
            'desc': '它有一个别致的名字，叫做“使君子”，人们大多知晓它的药物作用，重视它的果实，其实谦谦君子也有温润的外表。'
        }, {
            'fname': '使君子',
            'href': '#',
            'src': 'images/moreflower/moreflower_ (11).jpg',
            'desc': '它有一个别致的名字，叫做“使君子”，人们大多知晓它的药物作用，重视它的果实，其实谦谦君子也有温润的外表。'
        }
    ];

    window.onscroll = function () {
        var column = document.querySelectorAll("#main .column");
        var offset = [];
        for (var i = 0, l = column.length; i < l; i++) {
            offset.push(getOffset(column[i].lastElementChild));
        }
        var minHeight = Math.min.apply(null, offset);
        var index = offset.indexOf(minHeight);
        var clientHeight = document.documentElement.clientHeight;
        var scrollHeight = document.body.scrollTop;
        var distance = (scrollHeight+clientHeight)-minHeight;
        if (distance > 200 && jsonObj.length > 0) {
            for (var i = 0, l = jsonObj.length; i < l; i++) {
                var obj = jsonObj[i];
                column[(i+index) % 4].innerHTML += 
                `<div class="box">
                    <a class="waterfall-box" href="${obj.href}"> 
                        <img src="${obj.src}" alt="${obj.fname}">             
                        <div class="desc">${obj.desc}</div> 
                    </a>
                </div>`
            }
        }
    }
    function getOffset(elem) {
        var total = elem.offsetHeight;
        total += elem.offsetTop;
        while (elem.offsetParent) {
            elem = elem.offsetParent;
            total += elem.offsetTop;
        }
        return total;
    }
}