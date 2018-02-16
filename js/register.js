/**
 * Created by web-01 on 2017/11/19.
 */

$(".btn1").click(function(e){
    e.preventDefault();
    var uname=$(".uname").val();
    var phone=$(".phone").val();
    var email=$(".email").val();
    var upwd=$(".upwd").val();
    var cpwd=$(".cpwd").val();
    if(uname==""){
        $(".uname").next().addClass("fail").html("此项不能为空");
    }
    $.ajax({
        type:"post",
        url:"data/register.php",
        data:{uname,phone,email,upwd,cpwd},
        success:function(data){
            if(data.code>0){
                alert("注册成功");
                location="login.html";
            }
        },
        error:function(){
            alert("网络故障请检查")
        }
    })
})