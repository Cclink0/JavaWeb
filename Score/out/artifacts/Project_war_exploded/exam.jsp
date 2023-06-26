<%--
  Created by IntelliJ IDEA.
  User: 王富贵
  Date: 22/5/2023
  Time: 下午9:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>答题</title>
    <style>
        #box{
            border: 1px solid grey;
            border-radius: 5px;
            width: 1500px;
            height: 800px;
            margin: 0 auto;
            margin-top: 80px;
            box-shadow: 10px 9px 5px rgb(0,0,0.9);
        }
        #next{
            text-align: center;
            border: 1px solid cornflowerblue;
            border-radius: 20px;
            background-color: cornflowerblue;
            color: white;
            width: 100px;
            height: 40px;
            margin-top: 700px;
            margin-left: 1350px;
        }
    </style>

</head>
<body>
<div id = "box">
    <input type="button" name="next" id="next" value="下一题">
</div>

<div id="timer">

</div>

<script>

</script>
</body>
</html>
