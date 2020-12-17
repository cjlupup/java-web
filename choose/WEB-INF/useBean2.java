package Bean;
import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.jsp.*;
import java.util.*;
import javax.servlet.http.*;
public class useBean2{
	//ServletRequest request;
	//ServletResponse response;	
	//JspWriter out;
	String Sd="sun.jdbc.odbc.JdbcOdbcDriver";                //建立一个联接机
    String Sc="jdbc:odbc:xxx";                      //建立一个Odbc源
    Connection con=null;                               //Connection对象
    ResultSet rs=null;           //建立一个记录集

	
	public void useBean(){
		                   try{
                               Class.forName(Sd);                  //用classforname方法加载驱动程序类
                          }catch(java.lang.ClassNotFoundException e){ //当没有发现这个加载这个类的时候抛出的异常
                               System.err.println(e);              //执行系统的错误打印
                          }

		}
/*	public void init(ServletRequest req,JspWriter ou,ServletResponse res){//将JSP中内置对象传到JAVA中
	     request=req;
		 out=ou;
		 response=res;
	}*/
	public ResultSet executeQuery(String sql){         //可以执行添加删等操作
                  try{
                          con=DriverManager.getConnection(Sc);
                          Statement  stmt = con.createStatement(
                                          ResultSet.TYPE_SCROLL_SENSITIVE,
                                          ResultSet.CONCUR_READ_ONLY);


                          rs=stmt.executeQuery(sql);
                  }catch(SQLException er){
                          System.err.println(er.getMessage());
                  }
                  return rs;
          }
          public int executeUpdate(String sql){                //数据库的更新操作
                  int result=0;
                  try{
                          con=DriverManager.getConnection(Sc);
                          Statement stmt=con.createStatement();
                          result=stmt.executeUpdate(sql);
                  }catch(SQLException ex){
                          System.err.println(ex.getMessage());
                  }
                  return result;
          }
        public void close(){
                  try{
                          if(con!=null)
                                  con.close();
                  }catch(Exception e){
                          System.out.print(e);
                  }try{
                          if(rs!=null)
                                  rs.close();
                  }catch(Exception e){
                          System.out.println(e);
                  }

          }


	
	
}