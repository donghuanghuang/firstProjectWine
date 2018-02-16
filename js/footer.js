/**
 * Created by web-01 on 2017/11/1.
 */
$(()=>{
    $.ajax({
        type:"get",
        url:"footer.html"
    }).then(result=>{
        document.getElementById("footerall").innerHTML=result
    })
})