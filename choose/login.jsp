<%@page contentType="text/html;charset=GBK"  %>
<%@page import="java.sql.*" %>
<%@page language="java" %>
<%@page import="java.util.*" %>

<html>
<jsp:useBean id="enroll" class="Bean.useBean2" scope="session"/>
<head>

<title>ѧ��ѡ��ϵͳ</title>
</head>
<body >
<% 
request.setCharacterEncoding("GBK");
String strusername=request.getParameter("username");
String strpassword=request.getParameter("password");
String URL="";
String strSQL="";
enroll.useBean();
strSQL = ("SELECT * FROM student where num='"+strusername+"'and password='"+strpassword+"'");//ִ��SQL���
   	URL= "student/index.htm"; 
   	ResultSet rs= enroll.executeQuery(strSQL); //����ResultSet(�����)����
	  	
	if(rs.next()){
	  	response.sendRedirect(URL);//ʵ��ҳ����ת
	  	session.setAttribute("s1",strusername);
	  	session.setAttribute("s2",strpassword);
	  	%>
	  	<% 
	  	}
       else {%>
    <script language="javascript"> alert("�ʺŻ��������������µ�¼��");</script>
    <meta http-equiv="refresh" content="1;URL=index.jsp">
       <% 
       }
  enroll.close(); 
       %>
   
       

 
</body>
</html>