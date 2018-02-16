<?php
require_once("init.php");
$uname=$_REQUEST["uname"];
$upwd=$_REQUEST["upwd"];
$sql="select uname,upwd from wine_user where uname='$uname' and upwd='$upwd'";
$result=mysqli_query($conn,$sql);
$row=mysqli_fetch_row($result);
if($row==null){
    echo '{"code":-1,"msg":"登录失败"}';
}else{
     echo '{"code":1,"msg":"登录成功"}';
}