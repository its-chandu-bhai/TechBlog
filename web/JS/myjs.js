function doLike(pid, uid) {
    console.log(pid + ", " + uid);

    // object
    const d = {
        // key: value
        uid: uid,
        pid: pid,
        operation: 'like'
    }

    $.ajax({
        url: "LikeServlet",
        data: d,
        success: function (data, textStatus, jqXHR) {
            console.log(data);
            // this method use for show the like on the front page
            if (data.trim() === 'true') {
                let c = $(".like-counter").html();
                c++;
                $(".like-counter").html(c);
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log(data);
        }
    });
}

// ----------------------------- Index Page ------------------------------ 
document.getElementById("r1").onmouseover = function () {
    mouseOver();
};
document.getElementById("r1").onmouseover = function () {
    mouseOut();
};
function mouseOver() {
    var i = 0;
    speed = 20;
    var txt = "Some quick example text to build on the card title and make up the bulk of the card's content.";
    function type() {
        if (i < txt.length) {
            document.getElementById("p1").innerHTML += txt.charAt(i);
            i++;
            setTimeout(type, speed);
        }
    }
    type();
}
function mouseOut() {
    document.getElementById("d").innerHTML = "";
}

