/**
 * Created by web-01 on 2017/11/1.
 */
$(()=>{
    $.ajax({
        type:"get",
        url:"header.html"
    }).then(result=>{
       document.getElementById("headerall").innerHTML=result
    })
})