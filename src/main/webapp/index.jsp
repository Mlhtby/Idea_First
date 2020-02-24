<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>login</title>
    <script src="js/jquery-2.2.3.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <link type="text/css" href="css/jquery-ui.min.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/bootstrap.min.js"></script>
    <link type="text/css" href="css/login.css" rel="stylesheet">
    <script src="js/my.js"></script>
</head>
<body>
<img src="img/login_bg2.jpg" class="bg">
<div id="head">
    <img src="img/login_head.png" width=100% height=100% />
</div>
<div id="center">
    <form name="myform" onSubmit="return validateform( )" enctype="multipart/form-data" action="cgi-bin/login.cgi" method="post" >
        <div class="input-group">
            <h3>用户名：</h3>&nbsp;<input class="form-control" id="username" name="username" type="text"  style="height:40px" value="" placeholder="只能输入字母或数字，4-16个字符"/>
        </div>
        <div class="input-group">
            <h3>密&nbsp;&nbsp;&nbsp;码：</h3>&nbsp;<input class="form-control" id="password" name="password" type="password" style="height:40px"  value="" placeholder="密码长度6-12位"/>
            <span class="input-group-btn">
			<INPUT class="btn btn-default" id="passwordeye" type="button" value="show/hide"">
        </span>
        </div>

        <div id="btn">
            <INPUT class="btn btn-primary" name="loginButton" type="submit" id="Button" value="登陆"  onclick="checkUserName()">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="register.html"><INPUT class="btn btn-primary" name="registerButton" id="Button" type="button" value="注册"></a>
        </div>
    </form>
</div>
<div id="bottom">
    <div class="footer" style="color:white;">
        Life &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;is &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fantastic
    </div>
</div>
</body>
</html>