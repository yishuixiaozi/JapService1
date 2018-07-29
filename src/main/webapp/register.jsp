<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'index.jsp' starting page</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link rel="stylesheet" type="text/css" href="css/register.css"/>
</head>

<body>
<div class="inner">
    <!--<img src="../images/flower.jpg">-->
    <p></p>
    <form action="#" method="post">
        <input type="text" class="name_input" name="username" for="reservation" placeholder="注册邮箱/用户名">
        <input type="password" class="pass_input" name="password" for="reservation" placeholder="密码">
        <input type="password" class="pass_input" name="password1" for="reservation" placeholder="确认密码">
        <!--<input type="submit" class="p_login" value="立即登录"/>-->
        <p class="p_login">注册</p>
        <!--<a href="#">免费注册</a>-->
    </form>
</div>
</body>
</html>