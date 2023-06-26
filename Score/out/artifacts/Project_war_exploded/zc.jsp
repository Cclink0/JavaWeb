<%--
  Created by IntelliJ IDEA.
  User: 王富贵
  Date: 16/5/2023
  Time: 下午9:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>注册</title>
    <style>
        *{
            margin: 0 auto;
            max-width: 100%;
        }
        body{

            background-image:linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab);
            background-size: 300% 300%;
            animation: zi 15s infinite both linear;
        }
        #inputbox{
            border:1px solid #DCDCDD;
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
            max-width: 100%;
            text-align: center;
        }
        #username{
            width:400px;
            height: 48px;
            border-radius: 5px;
            border: 1px solid white;
            border-radius: 5px;
            margin-top: 50px;
        }
        #password{
            width:400px;
            height: 48px;
            border-radius: 5px;
            border: 1px solid white;
        }
        #but{
            width: 350px;
            height: 48px;
            border: none;
            color: white;
            border-radius: 5px;
            font-size: 25px;
            background:linear-gradient(to right,#00B4F4 50%, #008CBA);
        }
    </style>
    <script type="text/javascript">
        function check1(){
            var username=document.getElementById("username").value;
            var password=document.getElementById("password").value;
            if(username==''){
                alert("用户名不能为空");return false;
            }
            else if((password=='')){
                alert("密码不能为空"); return false;
            }
            else{
                return true;
            }

        }

    </script>
</head>
<body>
<div id="inputbox">
    <h1>注册</h1>
    <form action="odbzc.jsp" method="post">
        <div id="text">
            <input type="text" name="username" id="username" placeholder="用户名"/>
        </div>
        <br/>
        <div id="pas">
            <input type="password" name="password" id="password" placeholder="密码"/>
        </div>
        <br/>
        <input type="submit" value="注册" onclick="return check1()" id="but"/>

    </form>
</div>
</body>
</html>
