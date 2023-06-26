<%--
  Created by IntelliJ IDEA.
  User: 王富贵
  Date: 15/5/2023
  Time: 下午8:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="cn.itcast.*" %>
<html>
<head>
    <title>登录</title>
    <style>
        *{
            margin: 0 auto;
        }
        body{
            background-image:linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab);
            background-size: 300% 300%;
            animation: zi 15s infinite both linear;
        }
         @keyframes gradientBG {
             0% {
                 background-position: 300% 300%;
             }
             33%{
                 background-position: 0% 300%;
             }
             66% {
                 background-position: 300% 0%;
             }
             100% {
                 background-position: 300% 300%;
             }
         }
        .console{
            width: 900px;
            height: 584px;
            background: rgba(255, 255, 255, 0.2);
            -webkit-backdrop-filter: blur(8px);
            backdrop-filter: blur(8px);
            border-radius: 25px;
            box-shadow:inset 0 0 6px rgba(255, 255, 255, 0.2);
            margin: auto;
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
        }
        .btn-login{
            width: 400px;
            height: 48px;
            border: none;
            color: white;
            border-radius: 5px;
            font-size: 25px;
            background:linear-gradient(to right,#00B4F4 50%, #008CBA);

        }
        #username{
            width: 400px;
            height: 48px;
            border: 1px solid white;
            border-radius: 5px;
            margin-top: 50px;
            /*background: url(pic/root.jpg) no-repeat top left;*/

        }
        #password {
            width: 400px;
            height: 48px;
            border: 1px solid white;
            border-radius: 5px;
            margin-top: 30px;
            /*background: url(pic/pas.png) no-repeat top left;*/
        }
    </style>

    <script type="text/javascript">
        function check(){
            var username=document.getElementById("username").value;
            var password=document.getElementById("password").value;
            if(username==''){
                alert("用户名不能为空");return false;
            }
            else if(password==''){
                alert("密码不能为空");return false;
            }
            else{
                return true;
            }
        }
    </script>
</head>
<body>
<div id="all">
    <div class="console">
        <center>
            <form name="form1" method="post" action="check.jsp">
                <h1 style="margin-top: 60px;">在线考试系统</h1>
                <input type="text" id="username" name="username" placeholder="用户名"/>
                <br>
                <br>
                <input type="password" id="password" name="psd" placeholder="密码"/>
                <br>
                <br>
                <input type="submit" class="btn-login" value="登录" onclick="return check()">
                <br>
                <br>
                <a href="#" style="text-decoration: none;color: #156AA8;">忘记密码?</a>&nbsp;&nbsp;<a href="zc.jsp" style="text-decoration: none;color: gray">注册</a>
            </form>
        </center>
    </div>
</div>
</body>
</html>