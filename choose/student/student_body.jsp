<%@page contentType="text/html;charset=GBK" %>
<%@page import ="java.sql.*"%>
<%@page language="java"%>
<html>
<head>
<link href="/netteaching/style.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<jsp:useBean id="person" class="Bean.useBean2" scope="session" />
<title>�ޱ����ĵ�</title>
</head>

<body  background="../images/BKGRD9.jpg">
<% 
person.useBean();
String id="";
id=(String)session.getAttribute("s1");
String strSQL="select * from student where num='"+id+"'";
ResultSet rs=person.executeQuery(strSQL);
rs.first();
%>
 
<center>
<td><font color="red"><%=rs.getString("name")%></font>
        ͬѧ,��ӭ����ѧ��ѡ��ϵͳ</td>
</center>

</body>
</html>
