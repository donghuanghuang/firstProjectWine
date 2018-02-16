<?php
require_once("init.php");
@$uname=$_REQUEST["uname"];
$sql="select uname from wine_user where uname='$uname'";
$result=mysqli_query($conn,$sql);
$row=mysqli_fetch_row($result);
if($row==null){
 echo '{"code":1,"msg":"用户名验证通过"}';
}else{
   echo '{"code":-1,"msg":"用户名已存在"}';
}