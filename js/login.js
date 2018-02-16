/**
 * Created by Administrator on 2018/1/22.
 */
$(".btn1").click(function(e){
    e.preventDefault();
    var uname=$(".uname").val();
    var upwd=$(".upwd").val();
    $.ajax({
        type:"post",
        url:"data/login.php",
        data:{uname,upwd},
        success:function(data){
            if(data.code>0){
                alert("登录成功");
                location="index.html"
            }else{
                alert("登录失败");
            }
        },
        error:function(){
            alert("网络故障请检查")
        }
    })
})