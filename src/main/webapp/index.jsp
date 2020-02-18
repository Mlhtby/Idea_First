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
    <SCRIPT language = "JavaScript">
        function checkUserName(){    //验证用户名
            var fname = document.myform.username.value;
            var reg=/^[0-9a-zA-Z]/;
            if(fname.length != 0){
                for(i=0;i<fname.length;i++){
                    if(!reg.test(fname)){
                        alert("只能输入字母或数字");
                        return false;}
                }
                if(fname.length<4||fname.length>16){
                    alert("只能输入4-16个字符")
                    return false;
                }
            }
            else{    alert("请输入用户名");
                document.myform.username.focus();
                return false     }
            return true;
        }

        function passCheck(){ //验证密码
            var userpass = document.myform.password.value;
            if(userpass == ""){
                alert("未输入密码 \n" + "请输入密码");
                document.myform.password.focus();
                return false;   }
            if(userpass.length < 6||userpass.length>12){
                alert("密码必须在 6-12 个字符。\n");
                return false;   }
            return true;   }

        function passCheck2(){
            var p1=document.myform.password.value;
            var p2=document.myform.password2.value;
            if(p1!=p2){
                alert("确认密码与密码输入不一致");
                return false;
            }else{
                return true;
            }
        }

        function checkEmail(){
            var Email = document.getElementById("email").value;
            var e = Email.indexOf("@"&&".");
            if(Email.length!=0){
                if(e>0){
                    if(Email.charAt(0)=="@"&&"."){
                        alert("符号@和符号.不能再邮件地址第一位");
                        return false;
                    }
                    else{
                        return true;
                    }
                }
                else{
                    alert("电子邮件格式不正确\n"+"必须包含@符号和.符号！");
                    return false;
                }
            }
            else{
                alert("请输入电子邮件！")
                return false;
            }
        }

        function checkbirthday(){    //验证用户名
            var year = document.myform.birthday.value;
            if(year < 1949 || year > 2007){
                alert("年份范围从1949-2007年");
                return false;}
            return true;     }


        function validateform(){
            if(checkUserName()&&passCheck( )&&passCheck2()&&checkEmail()&&checkbirthday())
                return true;
            else
                return false;
        }

        function clearText( ) {
            document.myform.user.value="" ;
            document.myform.password.value="" ;
        }

        //显示隐藏对应的switchPwd()方法:
        $(function(){
            // 通过jqurey修改
            $("#passwordeye").click(function(){
                let type =  $("#password").attr('type')
                if(type === "password"){
                    $("#password").attr("type","text");
                }else{
                    $("#password").attr("type","password");
                }
            });
        });


    </SCRIPT>
</head>
<body>
<img src="img/login_bg.jpg" class="bg">
<div id="head">
    <img src="img/login_head.png" width=100% height=auto />
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
        Copyright &copy; 2013-2019 All Rights Reserved. 备案号：
    </div>
</div>
</body>
</html>