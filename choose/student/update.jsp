<%@page contentType="text/html;charset=GBK" %>
<%@page import ="java.sql.*"%>
<%@page language="java"%>
<html>
<jsp:useBean id="update" class="Bean.useBean2" scope="session"/>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<body >

<%  

request.setCharacterEncoding("GBK");
String id="";
String psd="";
id=(String)session.getAttribute("s1");
psd=(String)session.getAttribute("s2");
String strpassword1=request.getParameter("password1");
String strpassword2=request.getParameter("password2");
if(strpassword1==""){
strpassword1=psd;
}else if(!strpassword1.equals(strpassword2)){%>
<script language="javascript">alert("两次输入的密码一定要相同！");</script>
<meta http-equiv="refresh"content="1;URL=reset.jsp"><% 
}

else
{ 
String strSQL;
strSQL=" update student set password='"+strpassword1+"' where num= '"+id+"'";
update.useBean();
update.executeUpdate(strSQL);
update.close();

}

%>
<meta http-equiv="refresh"content="1;URL=new.jsp">
</body>
</html>