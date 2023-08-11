<%--
  Created by IntelliJ IDEA.
  User: 20916
  Date: 2022/6/24
  Time: 3:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <style type="text/css">
        *{
            box-sizing:border-box;
        }
        div{
            display: block;
        }
        body {
            background-size: cover;
            background-attachment: fixed;
            background-color: antiquewhite;
        }
        button {
            outline:none;
        }
        h1 {
            font-weight: bold;
            margin-top: 15%;
        }
        form {
            background: #fff;
            display: flex;
            flex-direction: column;
            padding: 0 50px;
            height: 100%;
            text-align: center;
        }
        input {
            background: #eee;
            border: none;
            padding: 12px 15px;
            margin: 8px 0;
            width: 100%;
            outline: none;
        }
        a {
            color: black;
            font-size: 15px;
            text-decoration: none;
            margin: 20px 0;
        }
        .main {
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 14px 28px rgba(0, 0, 0, .25), 0 10px 10px rgba(0, 0, 0, .22);
            position: relative;
            display: flex;
            overflow: hidden;
            width: 800px;
            height: 480px;
            max-width: 100%;
            min-height: 480px;
            margin: 5% auto 0 auto;
        }
        .Login_div {
            background: #fff;
            width: 50%;
            height: 100%;
            opacity: 1;
            text-align: center;
        }
        .Options_div {
            background: #fff;
            background-color: #ff445e;
            width: 50%;
            height: 100%;
            color: #fff;
            text-align: center;
        }
        .Options_div h1{
            margin:30% 0 30px 0;
        }
        .Options_div span{
            font-size: 15px;
            letter-spacing: 1px;
        }
        .Options_div button{
            background: transparent;
            border: 1px solid #fff;
            border-radius: 20px;
            color: #fff;
            font-size: 12px;
            font-weight: bold;
            padding: 12px 45px;
            letter-spacing: 5px;
            margin-top: 8%;
        }
        .Registered_div {
            background: #fff;
            width: 0;
            height: 100%;
            opacity: 0;
        }
        .Registered_div .submit_button{
            margin-top: 5%;
        }
        .eneter{
            margin-top: 10%;
        }
        .submit_button {
            border-radius: 20px;
            border: 1px solid #ff4b2b;
            background: #ff4b2b;
            color: #fff;
            font-size: 12px;
            font-weight: bold;
            padding: 12px 45px;
            letter-spacing: 5px;
        }
        #Switch_Registered{
            width: 100%;
            height: 100%;
            opacity: 1;
        }
        #Switch_Login{
            width: 100%;
            height: 100%;
            display: none;
            opacity: 0;
        }
        .Registered_div .eneter p {
            text-align: center;
            font-size: 14px;

        }
        .Registered_div .eneter input{
            width: 200px;
            height: 15px;
        }
    </style>
    <script src="${pageContext.request.contextPath}/js/views/adminJs/libs/jquery.min.js"></script>
    <script>
        $(function() {
            $("#Registered_button").click(function(){
                $(".Login_div").animate({width:"0",opacity:"0"});
                $(".Registered_div").animate({width:"50%",opacity:"1"});
                $("#Switch_Registered").animate({opacity:"0"});
                $("#Switch_Login").animate({opacity:"1"});
                $("#Switch_Registered").slideUp();
                $("#Switch_Login").slideDown();
            });

            $("#Login_button").click(function(){
                $(".Registered_div").animate({width:"0",opacity:"0"});
                $(".Login_div").animate({width:"50%",opacity:"1"});
                $("#Switch_Login").animate({opacity:"0"});
                $("#Switch_Registered").animate({opacity:"1"});
                $("#Switch_Login").slideUp();
                $("#Switch_Registered").slideDown(500);
            });
        });
    </script>
</head>
<body>
<div class="main">
    <div class="Login_div">
        <form action="${pageContext.request.contextPath}/shop/userLoginPost" method="post">
            <h1>登录</h1>
            <span>请登录您的账号</span>
            <div class="eneter">
                <input name="uUsername" type="text" placeholder="账号">
                <input name="uPassword" type="password" placeholder="密码">
            </div>
            <span style="margin-left: 20px; color: red;">${msg}</span>
            <button class="submit_button">登录</button>
        </form>
    </div>
    <div class="Options_div">
        <div id="Switch_Registered">
            <h1>还没有账号？</h1>
            <p>立即注册，和我们一起开始购物吧</p>
            <button id="Registered_button">前往注册</button>
        </div>
        <div id="Switch_Login">
            <h1>已有账号？</h1>
            <p>请使用您的帐号进行登录</p>
            <button id="Login_button">前往登录</button>
        </div>
    </div>
    <div class="Registered_div">
        <form action="${pageContext.request.contextPath}/user/addUserRegister" method="post">
            <h3>注册</h3>
            <div class="eneter">
                用户名：<input type="text" name="text" id="uname" value="" /><br />
                密码:<input type="text" name="text" id="password" value="" /><br />
                确认密码:<input type="text" name="text" id="passwords" value="" /><br />
                E-mail:<input type="text" name="text" id="e-mail" value="" /><br />
                姓名:<input type="text" name="text" id="name" value="" /><br />
                性别:<input type="radio" id="man" name="sex" value="男" style="width: 80px;"><label for="man">男</label>
                <input type="radio" id="woman" name="sex" value="女" style="width:80px;"><label for="woman">女</label><br />
                联系方式:<input type="text" name="text" id="phone" value="" /><br />
                地址:<input type="text" name="text" id="address" value="" />
            </div>
            <button class="submit_button">注册</button>
        </form>
    </div>
</div>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/libs/common.js"></script>
</body>
</html>