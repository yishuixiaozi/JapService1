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
        <script type="text/javascript" src="js/jquery-1.11.3.js"></script>

        <script type="text/javascript">
            $(document).ready(function(){
//                alert("ssss");

                /*$("#name1").blur(function()*/
                $("#btn").click(function()
                {

                    $.post("user/ajax.action",{name:$("#name1").val()},function(data,state)
                    /*$.get("user/ajax.action?name="+$("#name1").val(),function(data,state)*/{
                        alert("Data"+data);
                        if(data.indexOf("error")>-1)
                        {
                            document.getElementById("btn").onclick = function(){
                                return false;
                            };
                            $("#sp").html("<font color='red'>用户名已存在，不能注册</font>");
                            $("submit").background("#FFFFFF");
                        }else if(data.indexOf("right") > -1){

                            //alert("true");
                            document.getElementById("btn").onclick = function(){
                                return true;
                            };
                            $("#sp").html("<font color='green'>该用户名可以使用</font>");

                        }else{
                            alert("未知错误");
                        }

                    });
                });





                /* ------------------------------------------------------------------ */
                $("#name3").blur(function(){
                    /*  $.get("good/sera.action?name="+$("#name3").val(),function(data,state) */

                    $.post("good/sera.action",{name:$("#name3").val()},function(data,status)
                    {

                        var goodslist = eval("("+data+")");
                        $.each(goodslist,function(index,mobile){
                            $("#sp1").append(mobile.phonename+"<br>");


                        });



                    });

                });



            });
        </script>
</head>
<body>
   这是首页部分，用于展示后期页面前台展示效果
   <a href="login.jsp">跳转到设计好的登录界面</a>
   <a href="/user/tiaozhuan.action">登录 跳转</a>

   <a href="${pageContext.request.contextPath }/views/login.jsp">查询测试</a><br><br>
   <a href="register.jsp">跳转到设计好的注册界面</a>
   <form action="/user/insert.action" method="post">
       <input type="text" name="username"/>
       <input type="password" name="password"/>
       <input type="submit" value="信息插入">
   </form>

   用户名注册：
   <form action="">
       姓名：<input type="text" id="name1" class="name2" name="name"/>
       <div id="message">
           <span id="sp">  </span>
       </div>
       <input type="submit" id="btn" value="提交">
   </form>
</body>
</html>