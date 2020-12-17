<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*" %>
<%@ page import="Bean.*" %>

<html><head>
<title>休闲茶舍</title>
<body background="../images/BKGRD9.jpg" topmargin="0" leftmargin="0" >
<center><br><br>
<table width=774 height="60" border=0 align=center cellpadding=0 cellspacing=0>
  <tr> 
   <td height="60" ><font size="+2" face="隶书" color="#000000">新闻详细内容</font></td>
    </tr>                  
</table>				
                  
 <br><br>
  <table height=200px cellSpacing=0 cellPadding=0 align="center"  border=0>
         
   
<%
    useBean2 enroll=new useBean2();
    enroll.useBean();	
	int id =(Integer.parseInt(request.getParameter("id")));
	String strSQL="SELECT * FROM article WHERE ID="+id+"";
	ResultSet rs= enroll.executeQuery(strSQL);
	while(rs.next())
 		{
%>
    <tr>  <td  align="center" class="title">  <%=rs.getString("TITTLE")%> <hr align="center" width="50%"  >  </td>
                     
      </tr>    
	  <tr><td height="30"></td></tr>
  <tr> <td height="70%" valign="top" class="body"><%=rs.getString("BODY")%></td>
                    </tr>           
               
                    
</table>
</table>
<% }
enroll.close(); 
%>
	</center>

</body>
</html>
