<%@page contentType="text/html;charset=gb2312"%>
<%@ page import="java.sql.*" %>
<%@ page import="Bean.*" %>
<%
useBean2 enroll=new useBean2();
enroll.useBean();
String id1=(String)session.getAttribute("s1");
request.setCharacterEncoding("GBK");
try{
	     
		String id = request.getParameter("id");
		String strSQL = "DELETE FROM sc WHERE num='"+id1+"'and cno='"+id+"'";
		int ResultCount= enroll.executeUpdate(strSQL);   
	    response.sendRedirect("noticeList.jsp");
}
catch(Exception e){
	out.println("´íÎóÐÅÏ¢:"+e.getMessage());
}
%>