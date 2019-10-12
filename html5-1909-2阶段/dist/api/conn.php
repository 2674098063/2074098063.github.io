<?php
$servername = 'localhost';//主机
$uname = 'root';//登陆数据库用户名
$psw = 'root';
$dbname = 'nanshigou';

$conn=new mysqli($servername,$uname,$psw,$dbname);
if($conn->connect_error){
    die("连接失败:".$conn->connect_error);
}