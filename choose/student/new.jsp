<%@page contentType="text/html;charset=GBK" %>
<html>
<head>
<title>ѧ��ѡ��ϵͳ</title>
<style type="text/css"> 
A:link{color: #ff9900;font-size:10pt;text-decoration:none}
A:visited{color: #ff9900;font-size:10pt;text-decoration:none}
A:hover{color: #FF6600;font-size:10pt;text-decoration:underline}
</style>
</head>
<%//��ֹĳЩ�û������е�½��ֱ��������ҳ��
 if (session.getAttribute("s1")==null){
	response.sendRedirect("index.jsp");
   }%>

<body  background="../images/BKGRD9.jpg">
  <table width="650">  
    <tr><img src="img/Forum_nav.gif"></img><font size="2">�޸�����</font></tr>
	 <hr color="#999999" >
     <tr align="middle">
      <td width="300" height="30" colspan="2">�����޸ĳɹ�!</td></tr>    
	
	
  </table>

  
</body></html>