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
if (confirm("��ȷ��Ҫɾ����") )
  top.location="del.jsp?id="+id
 }
</script>
</head>
<body background="../images/BKGRD9.jpg">
<center>
<br>
<p>�ҵĿα�</p>
<%//��ֹĳЩ�û������е�½��ֱ��������ҳ��
  if (session.getAttribute("s1")==null){
	response.sendRedirect("../index.jsp");
   }%>

<%
useBean2 enroll=new useBean2();
enroll.useBean();
String id=(String)session.getAttribute("s1");
String strSQL="select * from course,sc where sc.num='"+id+"'and sc.cno=course.cno";
ResultSet rs= enroll.executeQuery(strSQL);
%>	<table  bgcolor="#CCCCFF" border="1" width="500" align="center"><tr><td>ȡ��ѡ��</td><td>�γ���</td><td>�Ͽ�ʱ��</td><td>�Ͽεص�</td><td>�Ͽν�ʦ</td><td>ѧ��</td></tr>
<%
  while(rs.next()) 
	{
		%> 
    <tr><td> <a href="del.jsp?id=<%=rs.getString("cno")%>">ɾ��</a></td>
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
