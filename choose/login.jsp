<%@page contentType="text/html;charset=GBK"  %>
<%@page import="java.sql.*" %>
<%@page language="java" %>
<%@page import="java.util.*" %>

<html>
<jsp:useBean id="enroll" class="Bean.useBean2" scope="session"/>
<head>

<title>学生选课系统</title>
</head>
<body >
<% 
request.setCharacterEncoding("GBK");
String strusername=request.getParameter("username");
String strpassword=request.getParameter("password");
String URL="";
String strSQL="";
enroll.useBean();
strSQL = ("SELECT * FROM student where num='"+strusername+"'and password='"+strpassword+"'");//执行SQL语句
   	URL= "student/index.htm"; 
   	ResultSet rs= enroll.executeQuery(strSQL); //建立ResultSet(结果集)对象
	  	
	if(rs.next()){
	  	response.sendRedirect(URL);//实现页面跳转
	  	session.setAttribute("s1",strusername);
	  	session.setAttribute("s2",strpassword);
	  	%>
	  	<% 
	  	}
       else {%>
    <script language="javascript"> alert("帐号或密码有误，请重新登录！");</script>
    <meta http-equiv="refresh" content="1;URL=index.jsp">
       <% 
       }
  enroll.close(); 
       %>
   
       

 
</body>
</html>