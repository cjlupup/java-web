<%@page contentType="text/html;charset=GBK" %>
<%@page import ="java.sql.*"%>
<%@page language="java"%>
<html>
<head>
<title>ѧ��ѡ��ϵͳ</title>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<jsp:useBean id="reset" class="Bean.useBean2" scope="session"/>

</head>
<%//��ֹĳЩ�û������е�½��ֱ��������ҳ��
 if (session.getAttribute("s1")==null){
	response.sendRedirect("../index.jsp");
   }%>
<% 
reset.useBean();
String id="";
id=(String)session.getAttribute("s1");
String strSQL="select * from student where num='"+id+"'";
ResultSet rs= reset.executeQuery(strSQL);
rs.first();
 %>
<body  background="../images/BKGRD9.jpg">


  <table width="650">
  <form  name="resetform"action="update.jsp"method="post">
    <tr><img src="img/Forum_nav.gif"></img><font size="2">�޸�����</font>
	 <hr color="#999999" >
      </td>    
    <tr valign="center">
      <td width="360" height="30"><FONT color="#000000" size="2"> �����룺
          <input type="password"name="password"size="15" value="<%=rs.getString("password")%>"readonly="yes"></font>
      </td>      
    </tr>
    <tr valign="middle">
      <td width="360" height="30"><FONT color="#000000" size="2">�����룺
          <input type="password"name="password1"size="15" >
    <br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��������޸�����ɲ�����д�˿գ�</font></td>
    </tr>
    <tr>
      <td width="360" height="52"><FONT color="#000000" size="2">����ȷ��
          <input type="password"name="password2"size="15" >
      <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  �������������һ��Ҫ��ͬ��
        </font></td>
    </tr> </tr>
    <tr align="left" valign="top">
      <td height="50" colspan="2" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  <input type="submit"value="�ύ">
&nbsp;&nbsp;
      <input type="reset"value="����"><br>
	  <hr color="#999999" >
	  </td>
    </tr>
	</form>
	
  </table>

  
</body></html>