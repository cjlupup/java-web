<%@ page contentType="text/html;charset=GBK"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>学生选课系统</title>
<style type="text/css"> 
A:link{color: 006699;font-size:14pt;text-decoration:none}
A:visited{color: #006699;font-size:9pt;text-decoration:none}
A:hover{color: #FF6600;font-size:9pt;text-decoration:underline}
</style>
</head>

<body background="images/BKGRD9.jpg">
<center>
<table width="799" border="0">
  <!--DWLayoutTable-->
<tr> 
    <td width="799" height="124"><img src="img/head.jpg" width="799" height="120"></td>
  </tr>
 <tr><td height="350" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
   <!--DWLayoutTable-->
   <tr>
     <td width="224" height="350" valign="top"><table width="100%" height="350" border="0">
  <tr>
    <td width="85%" valign="top"><p><font color="#006600">&#8226;</font><font color="#000000" size="3">系统登录界面</font><br><br>
	 <font size="2"><font color="#ff9933"> &nbsp;&nbsp;<font size="3">&#8226;</font></font><a href="index1.jsp" target="_self"><font  style="font-size:14px; color:#006699; font-family:宋体; ">学生登录</font></a>
	 <br><br><font size="2"><font color="#ff9933"> &nbsp;&nbsp;<font size="3">&#8226;</font></font><font color="#999999" size="3"><a href="index2.jsp" target="_self">教师登录</a></font>
	 <br><br><font size="2"><font color="#ff9933"> &nbsp;&nbsp;<font size="3">&#8226;</font></font><font color="#999999" size="3"><a href="index3.jsp" target="_self">管理员登录</a></font>
        
    <td width="1%" bgcolor="#999999">&nbsp;</td>
  </tr>
</table></td>
     <td width="545" valign="top"><SCRIPT type=text/javascript>
                        <!--
 
                              var focus_width=544
                              var focus_height=350
                              var text_height=20
                              var swf_height = focus_height+text_height
 
                              var 
                                  pics='images/1.jpg|images/2.jpg|images/3.jpg|images/4.jpg|images/5.jpg'
                                  links='index.jsp|index.jsp|index.jsp|index.jsp|index.jsp'
                                  var texts='转 载 图 片 1 |转 载 图 片 2  |转 载 图 片 3  |转 载 图 片 4 |转 载 图 片 5 '

 
                                 document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="'+ focus_width +'" height="'+ swf_height +'">');
                                 document.write('<param name="allowScriptAccess" value="sameDomain"><param name="movie" value="http://sports.qq.com/flash/playswf.swf"><param name=wmode value=transparent><param name="quality" value="high">');
                                 document.write('<param name="menu" value="false"><param name=wmode value="opaque">');
                                 document.write('<param name="FlashVars" value="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'">');
                                 document.write('<embed src="http://sports.qq.com/flash/playswf.swf" wmode="opaque" FlashVars="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'" menu="false" bgcolor="#DADADA" quality="high" width="'+ focus_width +'" height="'+ swf_height +'" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />');  document.write('</object>');
 
                        //-->
             </SCRIPT>
	 </td>
   <td width="30">&nbsp;</td>
   </tr>
 </table></td>
</table>
<table align="center">
  <tr align="center" valign="middle"> 
    <td height="55" colspan="3"><%@ include file="inc/tail.htm"%></td>
  </tr>
</table>
</center>
<SCRIPT language="javascript">
<!--
function Helpor_net(seed)
{ var m1 = "欢迎使用学生选课管理系统" ;
var m2 = "" ;
var msg=m1+m2;
var out = "";
var c = 1;
var speed = 120;
if (seed > 100)
{ seed-=1;
var cmd="Helpor_net(" + seed + ")";
timerTwo=window.setTimeout(cmd,speed);}
else if (seed <= 100 && seed > 0)
{ for (c=0 ; c < seed ; c++)
{ out+=" ";}
out+=msg; seed-=1;
var cmd="Helpor_net(" + seed + ")";
window.status=out;
timerTwo=window.setTimeout(cmd,speed); }
else if (seed <= 0)
{ if (-seed < msg.length)
{
out+=msg.substring(-seed,msg.length);
seed-=1;
var cmd="Helpor_net(" + seed + ")";
window.status=out;
timerTwo=window.setTimeout(cmd,speed);}
else { window.status=" ";
timerTwo=window.setTimeout("Helpor_net(100)",speed);
}
}
}
Helpor_net(100);
--></SCRIPT>
</body>

</html>
