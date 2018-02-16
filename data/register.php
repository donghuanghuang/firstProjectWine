<?php
require_once("init.php");
@$uname=$_REQUEST["uname"];
@$phone=$_REQUEST["phone"];
@$email=$_REQUEST["email"];
@$upwd=$_REQUEST["upwd"];
@$cpwd=$_REQUEST["cpwd"];
$sql="insert into wine_user(uname,upwd,cpwd,phone,email) values('$uname','$upwd','$cpwd','$phone','$email')";
$result=mysqli_query($conn,$sql);
if($result==true){
 echo '{"code":1,"mes":"注册成功"}';
}else{
  echo '{"code":-1,"mes":"注册失败"}';
}
