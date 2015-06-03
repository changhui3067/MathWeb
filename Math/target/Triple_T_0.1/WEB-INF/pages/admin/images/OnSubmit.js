/**
 * Created by Administrator on 2015/5/27.
 */
function OnSubmit(param){
    var title = document.getElementById("title").value;
    //var author = document.getElementById("author").value;
    var content = document.getElementById("contentText").value;
    var type = param.getAttribute("name");

    if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
            var response = xmlhttp.responseText;
            //document.getElementById("div1").style.display="block";
            //document.getElementById("iframe").innerHTML=xmlhttp.responseText;
            alert(response);
        }
    };

    xmlhttp.open("POST", "adminChange?type="+type+"&title="+title+"&content="+content, true);
    xmlhttp.send();
}