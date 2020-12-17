<%@ page contentType="text/html;charset=GBK"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>学生选课系统</title>
</head>

<body background="images/BKGRD9.jpg">
<script language="javascript">
 function checkform() {
	if (document.loginform.username.value=="" || document.loginform.password.value==""){
		alert("用户名或密码为空！");
		return false;
	}
	return true;
  }
</script>
<table width="799" border="0" align="center">
<tr> 
    <td height="124" colspan="3"><img src="img/head.jpg" width="799" height="120"></td>
  </tr>
  </table>
<p align="center"> 学生登录 </p>
<table width="75%" height="350" border="0" align="center">
  
  <tr> 
    <td height="163">&nbsp;</td>
    <td align="center" valign="top">
     <form name="loginform" action="login.jsp">
      <table width="43%" border="0">
        <tr> 
          <td align="right">学 号：</td>
          <td><input name="username" type="text" size="15"></td>
        </tr>
        <tr> 
          <td align="right">密 码：</td>
          <td><input name="password" type="password" size="15"></td>
        </tr>        
        <tr> 
          <td align="right">
<input name="submit" type="submit" value="登录" onClick="javascript:return(checkform());">
          </td>
          <td><input name="reset" type="reset" value="重置"></td>
        </tr>
      </table>
      </form>
	</td>
    <td>&nbsp;</td>
  </tr>
  <tr align="center" valign="middle"> 
    <td height="55" colspan="3"><%@ include file="inc/tail.htm"%></td>
  </tr>
</table>
</body>
</html>
