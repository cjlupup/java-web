<%@page contentType="text/html;charset=gb2312"%>
<%@page import="java.sql.*"%>
<HTML><head>
<style type="text/css"> 
A:link{color: #ff9900;font-size:10pt;text-decoration:none}
A:visited{color: #ff9900;font-size:10pt;text-decoration:none}
A:hover{color: #FF6600;font-size:10pt;text-decoration:underline}
</style>
</head>
<BODY  background="../images/BKGRD9.jpg">
<%//��ֹĳЩ�û������е�½��ֱ��������ҳ��
 if (session.getAttribute("s1")==null){
	response.sendRedirect("../index.jsp");
   }%>

<center>
<p><font size="+6" face="����" color="#0066FF">�������</font></p><br>
<table bgcolor="#CCCCFF" border="1" width="550" align="center"><tr><td>ѡ��</td><td>�γ���</td><td>�Ͽ�ʱ��</td><td>�Ͽεص�</td><td>�Ͽν�ʦ</td><td>ѧ��</td></tr>
<%
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;
try{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
}
catch(ClassNotFoundException ce){
	out.println(ce.getMessage());
}
request.setCharacterEncoding("GBK");
String str = request.getParameter("searchinput");
if( str == null)
	str = "";
try{
	conn=DriverManager.getConnection("jdbc:odbc:xxx");
	stmt=conn.createStatement();
	rs=stmt.executeQuery("SELECT * FROM course WHERE ctime LIKE '%" + str + "%'");
	
	
    
	while(rs.next()){
		String id=rs.getString("cno");
		out.print("<TR><TD>");%>
		<a href=insert.jsp?id=<%=id%>>ѡ��</a></td>
		
		<%
		out.print("<TD>"+rs.getString("cname")+"</TD>");
		out.print("<TD>"+rs.getString("ctime")+"</TD>");
		out.print("<TD>"+rs.getString("cadress")+"</TD>");
		out.print("<TD>"+rs.getString("ctea")+"</TD>");
		out.print("<TD>"+rs.getShort("csc")+"</TD>");		
		out.print("</tr>");
		if(!rs.next()) break;
	}
	

}
catch(SQLException e){
	System.out.println(e.getMessage());
}
finally{
	stmt.close();
	conn.close();
}

%>
</table>
</center>
</BODY></HTML>
