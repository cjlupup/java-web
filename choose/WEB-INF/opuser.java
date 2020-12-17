package grad.util.user;

import bean.useBean2;
//import grad.util.course.*;
import java.sql.*;
import java.util.*;
public class opuser {
  public opuser() {
  }
  /**
   * 通过用户编号和用户类型，返回用户的详细信息
   * @param user_code
   * @param type
   * @return
   */
  public user getUserByUserCode(String user_code){
   Connection conn=null;
     Statement st=null;
     ResultSet rs=null;
     String sql ="select * from student where num='"+user_code+"'";
     try{
       DataBase ds = new DataBase();
       conn = ds.conn;
       st = conn.createStatement();
       user us=new user();
       rs = st.executeQuery(sql);
       if (rs.next()) {
          us.setId(rs.getNum(1));
         // System.out.println(rs.getString(2));
         // us.setAccount(rs.getString(2));
          us.setPassword(rs.getString(3));
          //us.setType(rs.getInt(4));
          us.setName(rs.getString(5));
          us.setSex(rs.getString(6));
          us.setCollege(rs.getString(7));
          //us.setTeacher(rs.getString(8));
       }
       return us;
     }catch(Exception e){System.out.println(e.getMessage());return null;}
  }
}