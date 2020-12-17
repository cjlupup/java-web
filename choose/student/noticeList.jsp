<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="java.sql.*" %>
<%@ page import="Bean.*" %>
<head>
<style type="text/css"> 
A:link{color: 006699;font-size:9pt;text-decoration:none}
A:visited{color: #006699;font-size:9pt;text-decoration:none}
A:hover{color: #FF6600;font-size:9pt;text-decoration:underline}
</style>
<title></title>
<script language="JavaScript">
<!--
function del(id) 
{
if (confirm("您确信要删除吗？") )
  top.location="del.jsp?id="+id
 }
</script>
</head>
<body background="../images/BKGRD9.jpg">
<center>
<br>
<p>我的课表</p>
<%//防止某些用户不进行登陆，直接想进入此页面
  if (session.getAttribute("s1")==null){
	response.sendRedirect("../index.jsp");
   }%>

<%
useBean2 enroll=new useBean2();
enroll.useBean();
String id=(String)session.getAttribute("s1");
String strSQL="select * from course,sc where sc.num='"+id+"'and sc.cno=course.cno";
ResultSet rs= enroll.executeQuery(strSQL);
%>	<table  bgcolor="#CCCCFF" border="1" width="500" align="center"><tr><td>取消选择</td><td>课程名</td><td>上课时间</td><td>上课地点</td><td>上课教师</td><td>学分</td></tr>
<%
  while(rs.next()) 
	{
		%> 
    <tr><td> <a href="del.jsp?id=<%=rs.getString("cno")%>">删除</a></td>
      <td ><%=rs.getString("cname")%></td>
	  <td ><%=rs.getString("ctime")%></td>
	  <td ><%=rs.getString("cadress")%></td>
	  <td ><%=rs.getString("ctea")%></td>
	  <td ><%=rs.getShort("csc")%></td>
    </tr>
	<%} 

  enroll.close(); 
%>  
</table>
<table width="650">
</table>
</center>
</body>
