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
	String Sd="sun.jdbc.odbc.JdbcOdbcDriver";                //����һ�����ӻ�
    String Sc="jdbc:odbc:xxx";                      //����һ��OdbcԴ
    Connection con=null;                               //Connection����
    ResultSet rs=null;           //����һ����¼��

	
	public void useBean(){
		                   try{
                               Class.forName(Sd);                  //��classforname������������������
                          }catch(java.lang.ClassNotFoundException e){ //��û�з����������������ʱ���׳����쳣
                               System.err.println(e);              //ִ��ϵͳ�Ĵ����ӡ
                          }

		}
/*	public void init(ServletRequest req,JspWriter ou,ServletResponse res){//��JSP�����ö��󴫵�JAVA��
	     request=req;
		 out=ou;
		 response=res;
	}*/
	public ResultSet executeQuery(String sql){         //����ִ�����ɾ�Ȳ���
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
          public int executeUpdate(String sql){                //���ݿ�ĸ��²���
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