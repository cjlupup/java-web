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
<%//防止某些用户不进行登陆，直接想进入此页面
 if (session.getAttribute("s1")==null){
	response.sendRedirect("../index.jsp");
   }%>

<center>
<p><font size="+6" face="隶书" color="#0066FF">搜索结果</font></p><br>
<table bgcolor="#CCCCFF" border="1" width="550" align="center"><tr><td>选课</td><td>课程名</td><td>上课时间</td><td>上课地点</td><td>上课教师</td><td>学分</td></tr>
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
		<a href=insert.jsp?id=<%=id%>>选课</a></td>
		
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
