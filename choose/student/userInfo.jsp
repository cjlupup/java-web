<%@ page contentType="text/html;charset=GBK" %>
<%@page import="java.sql.*" %>
<%@page language="java" %>
<%@page import="java.util.*" %>
<head>
<title>ѧ��ѡ�ι���ϵͳ</title>
<style type="text/css"> 
A:link{color: #ff9900;font-size:10pt;text-decoration:none}
A:visited{color: #ff9900;font-size:10pt;text-decoration:none}
A:hover{color: #FF6600;font-size:10pt;text-decoration:underline}
</style>  
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<jsp:useBean id="person" class="Bean.useBean2" scope="session" />
</head>
<body  background="../images/BKGRD9.jpg">
<%//��ֹĳЩ�û������е�½��ֱ��������ҳ��
  if (session.getAttribute("s1")==null){
	response.sendRedirect("../index.jsp");
   }%>
<% 
person.useBean();
String id="";
id=(String)session.getAttribute("s1");
String strSQL="select * from student where num='"+id+"'";
ResultSet rs=person.executeQuery(strSQL);
rs.first();
%>
 
 
  <table  border="0"  cellpadding="0" cellspacing="0"  width="650" background="img/lanse_r21_c2.gif" >
    <tr>
      <td height="20" colspan="2" align="center" valign="middle">
    ������Ϣ</td> 
    </tr>   
    
    <tr>
      <td width="300" height="30"><span class="style4">��&nbsp;&nbsp;&nbsp;&nbsp;����</span><font color="#000000" size="2"><%=rs.getString("name")%></font>
      </td>
    </tr>
	<tr>
      <td height="30" colspan="2"><span class="style4">ѧ&nbsp;&nbsp;&nbsp;&nbsp;�ţ�<font color="#000000" size="2"><%=id%></font>
      </td>
    </tr>
	<tr>
      <td height="30" ><span class="style4">ѧ&nbsp;&nbsp;&nbsp;&nbsp;Ժ��<font color="#000000" size="2"><%=rs.getString("college")%></font>
      </td>
    </tr>
    <tr>
      <td height="30" colspan="2"><span class="style4">��&nbsp;&nbsp;&nbsp;&nbsp;��<font color="#000000" size="2"><%=rs.getString("sex")%> </font>      
      </td>
    </tr>
    <tr>
      <td height="30" colspan="2"><span class="style4">ϵ&nbsp;&nbsp;&nbsp;&nbsp;����<font color="#000000" size="2"><%=rs.getString("dep")%> </font>      
      </td>
    </tr>
	<tr>
      <td height="30" colspan="2"><span class="style4">��&nbsp;&nbsp;&nbsp;&nbsp;����<font color="#000000" size="2"><%=rs.getString("class")%> </font>      
      </td>
    </tr>
    
  </table>
<table width="650">

<tr bgcolor="#999999"> 
    <td height="1" colspan="3"></td>
 
</tr>
</table>
</body>
