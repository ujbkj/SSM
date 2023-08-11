<%--
  Created by IntelliJ IDEA.
  User: 20916
  Date: 2022/5/14
  Time: 14:38
  To change this template use File | Settings | File Templates.
--%>

<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>登录界面</title>
<style>
  .h_title{position: relative;display: inline-block;}
  .box_div{
    width: 100%;
  }

  .box_main{
    position: absolute;
    top:50%;
    left: 50%;
    transform: translate(-50%,-50%);
    width: 60%;
    min-width: 700px;
    box-shadow: 0 0 30px #322f2f;
    /*background-image: url(/image/bg.jpg);*/
    /*background-repeat: no-repeat;*/

  }
  .box_main_right{
    width: 50%;
    height:450px;
    float: left;
    position: relative;
  }
  .box_form {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
  }
</style>
  <script src="${pageContext.request.contextPath}/js/views/adminJs/libs/jquery.min.js"></script>
</head>
<body style="text-align: center;">
<div class="box_div">
  <div class="box_main" style="background: url(/image/bg.jpg) no-repeat;">
    <div  style="width:50%;height:450px;float: left; ">
      <br>
      <h2 class="h_title">Lucky&nbsp;零&nbsp;食&nbsp;商&nbsp;城&nbsp;管&nbsp;理</h2>
    </div>
    <div class="box_main_right">
      <div class="box_form">
        <div style="width: 300px">
          <h3 style="float: left">登&nbsp;&nbsp;录</h3>
          <c:if test="${not empty msg}">
            <div style="width: 100%;height: 40px;clear: left;margin-bottom: 15px;background: rgba(252,158,158,0.3);border-radius: 5px">
              <P style="font-size: 17px;color: #8a1717;line-height: 40px;">${msg}</P>
            </div>
          </c:if>
          <form action="${pageContext.request.contextPath}/admin/login/adminGoLogin" method="post" style="width: 300px">
            <input type="text" name="adUsername" placeholder="用户名"autocomplete="off" style="width: 100%;height: 40px;border-radius: 5px"><br><br>
            <input type="password" name="adPassword"  placeholder="密码" autocomplete="off" style="width: 100%;height: 40px;border-radius: 5px"><br><br>
            <input type="submit"value="登&nbsp;&nbsp;录"  style="width: 100%;height: 35px;background: orange;color: white;font-size: 17px;border-radius: 5px">
          </form>
          <br>
        </div>
      </div>
    </div>
  </div>

</div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/views/adminJs/adminMain.js"></script>
</html>
