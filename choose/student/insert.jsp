<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="java.sql.*" %>
<%@ page import="Bean.*" %>
<html>
<head>
<style type="text/css"> 
A:link{color: 006699;font-size:9pt;text-decoration:none}
A:visited{color: #006699;font-size:9pt;text-decoration:none}
A:hover{color: #FF6600;font-size:9pt;text-decoration:underline}
</style>
<title>
</title>
</title>
<style type="text/css">
<!--
.��ʽ1 {
	color: #CC3300;
	font-size: 16px;
}
.��ʽ2 {
	color: #0033FF;
	font-size: 16px;
}
-->
</style>
</head>
<center>
<body  background="../images/BKGRD9.jpg">
<table width="799" border="0">
	<tr height ="120"></tr>
	 <%//��ֹĳЩ�û������е�½��ֱ��������ҳ��
  if (session.getAttribute("s1")==null){
	response.sendRedirect("../index.jsp");
   }%>
<%
useBean2 enroll=new useBean2();
enroll.useBean();
String id=request.getParameter("id");	
String id1=(String)session.getAttribute("s1");
String strSQL="INSERT INTO sc(num,cno)"+
    "VALUES('"+id1+"','"+id+"')";
int ResultCount= enroll.executeUpdate(strSQL);   
//rs = smt.executeQuery(sql);
// enroll.close(); 
%>

<table width=381 border="0" align=center cellpadding=0 cellspacing=0 >
  <tr  height=25>
    <td width="391" align=center ><font color=#3366FF><B>ѡ�γɹ�!</B></font></td>
	</tr>
	<tr>
	<TD align=center><BR><a href="courseInfo.jsp">����ѡ��</a><br><BR>      
      </TD>
  </tr>
</table>
</table>
</body>
</center>
</html>