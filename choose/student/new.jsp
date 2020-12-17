<%@page contentType="text/html;charset=GBK" %>
<html>
<head>
<title>学生选课系统</title>
<style type="text/css"> 
A:link{color: #ff9900;font-size:10pt;text-decoration:none}
A:visited{color: #ff9900;font-size:10pt;text-decoration:none}
A:hover{color: #FF6600;font-size:10pt;text-decoration:underline}
</style>
</head>
<%//防止某些用户不进行登陆，直接想进入此页面
 if (session.getAttribute("s1")==null){
	response.sendRedirect("index.jsp");
   }%>

<body  background="../images/BKGRD9.jpg">
  <table width="650">  
    <tr><img src="img/Forum_nav.gif"></img><font size="2">修改密码</font></tr>
	 <hr color="#999999" >
     <tr align="middle">
      <td width="300" height="30" colspan="2">密码修改成功!</td></tr>    
	
	
  </table>

  
</body></html>