<%@ page contentType="text/html;charset=gb2312" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<head>
<title>ѧ��ѡ�ι���ϵͳ</title>
<style type="text/css"> 
A:link{color: #ff9900;font-size:10pt;text-decoration:none}
A:visited{color: #ff9900;font-size:10pt;text-decoration:none}
A:hover{color: #FF6600;font-size:10pt;text-decoration:underline}
</style>

</HEAD>
<body  background="../images/BKGRD9.jpg">
 <%//��ֹĳЩ�û������е�½��ֱ��������ҳ��
  if (session.getAttribute("s1")==null){
	response.sendRedirect("../index.jsp");
   }%>
<center>
<p>ѡ����Ϣ</p>
<table bgcolor="#CCCCFF" border="1" width="500" align="center"><tr><td>ѡ��</td><td>�γ���</td><td>�Ͽ�ʱ��</td><td>�Ͽεص�</td><td>�Ͽν�ʦ</td><td>ѧ��</td></tr>
<% 
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;
String strSQL = "";
int PageSize = 5;
int Page = 1;
int totalPage = 1;
int totalrecord = 0;
try{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
}
catch(ClassNotFoundException ce){
	out.println(ce.getMessage());
}
try{
	conn=DriverManager.getConnection("jdbc:odbc:xxx");
	stmt=conn.createStatement(
		ResultSet.TYPE_SCROLL_INSENSITIVE,
		ResultSet.CONCUR_READ_ONLY);
	//���������
	strSQL = "SELECT count(*) as recordcount FROM course";
	rs = stmt.executeQuery(strSQL);
	if (rs.next()) totalrecord = rs.getInt("recordcount");
	//�����¼
	strSQL = "SELECT * FROM course";
    rs = stmt.executeQuery(strSQL);
	if(totalrecord % PageSize ==0)// ����ǵ�ǰҳ���������
		totalPage = totalrecord / PageSize; 
	else  // �����󻹿���һҳ
		totalPage = (int) Math.floor( totalrecord / PageSize ) + 1; 
	if(totalPage == 0) totalPage = 1;
	if(request.getParameter("Page")==null || request.getParameter("Page").equals(""))
		Page = 1;
	else
	try {
		Page = Integer.parseInt(request.getParameter("Page"));
	}
    catch(java.lang.NumberFormatException e){
		// �����û����������ַ��ֱ������Page=sdfsdfsdf����ɵ��쳣
		Page = 1;
	}
	if(Page < 1)  Page = 1;
	if(Page > totalPage) Page = totalPage;
	rs.absolute((Page-1) * PageSize + 1);	
	for(int iPage=1; iPage<=PageSize; iPage++)
	{

		out.print("<TR><TD>");
   	  	out.print("<a href=insert.jsp?id="+rs.getString("cno")+">ѡ��</a>");		
		out.print("</TD><TD>"+rs.getString("cname")+"</TD>");
		out.print("<TD>"+rs.getString("ctime")+"</TD>");
		out.print("<TD>"+rs.getString("cadress")+"</TD>");
		out.print("<TD>"+rs.getString("ctea")+"</TD>");
		out.print("<TD>"+rs.getShort("csc")+"</TD>");		
		out.print("</tr>");
		if(!rs.next()) break;
	}
	out.print("</TABLE>");
}
catch(SQLException e){
	System.out.println(e.getMessage());
}
finally{
	stmt.close();
	conn.close();
}
%>
<FORM Action="courseInfo.jsp" Method="GET">
<% 
   if(Page != 1) {
      out.print("   <A HREF=courseInfo.jsp?Page=1>��һҳ</A>");
      out.print("   <A HREF=courseInfo.jsp?Page=" + (Page-1) + ">��һҳ</A>");
   }
   if(Page != totalPage) {
      out.print("   <A HREF=courseInfo.jsp?Page=" + (Page+1) + ">��һҳ</A>");
      out.print("   <A HREF=courseInfo.jsp?Page=" + totalPage + ">���һҳ</A>");
   }
%>
<BR>����ҳ����<input TYPE="TEXT" Name="Page" SIZE="3"> 
ҳ��:<font COLOR="Red"><%=Page%>/<%=totalPage%></font> 
</FORM>

<form name="form1" method="post" action="search.jsp">
  <table width="446" height="193" border="0" align="center" cellpadding="0" cellspacing="0" >
    <tr>
      <td width="446" height="70"><div align="center" class="STYLE1">�����γ�</div></td>
    </tr>
    <tr>
      <td height="65"><div align="center">������γ����ؼ��ʣ�
          <input name="searchinput" type="text" size="30" maxlength="30">
      </div></td>
    </tr>
    <tr>
      <td><div align="center">
        <input type="submit" name="Submit" value="�ύ" size="24">
        &nbsp;&nbsp;&nbsp;&nbsp;
         <input type="reset" name="Reset" value="����" size="24">
      </div></td>
    </tr>
  </table>
  <form name="form2" method="post" action="search1.jsp" >
  <table width="446" height="193" border="0" align="center" cellpadding="0" cellspacing="0" >
    <tr>
      <td width="446" height="70"><div align="center" class="STYLE1">�����γ�</div></td>
    </tr>
    <tr>
      <td height="65"><div align="center">������γ��Ͽ�ʱ��ؼ��ʣ�
          <input name="searchinput1" type="text" size="20" maxlength="20">
      </div></td>
    </tr>
    <tr>
      <td><div align="center">
       <input type="submit" name="Submit1" value="�ύ" size="24">
        &nbsp;&nbsp;&nbsp;&nbsp;
         <input type="reset" name="Reset1" value="����" size="24">
      </div></td>
    </tr>
  </table>
</form>
</center>
</body>
</html>