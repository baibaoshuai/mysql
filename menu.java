package mysql02;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



public class menu {
	private static String URL= "jdbc:mysql://localhost:3306/usertable?useSSL=false";
	private static String USER= "root";
	private static String PASSWD="bai.199521906";
	public static void main(String[] args) {
		PreparedStatement pstmt = null;
		ResultSet rs =null;
	try {
		Connection con =DriverManager.getConnection(URL, USER, PASSWD);
		Statement smt = con.createStatement();
		//String s1 = "insert into  usertable.lunchmenu (id,name,price,limited) values(?,?,?,?);";
		//String s1 = "update  usertable.lunchmenu set limited=? where id=1;";
		//String s1 = "update  usertable.lunchmenu set price=? where id=2;";
		String s1 = "delete from usertable.lunchmenu where id=?;";
		pstmt = con.prepareStatement(s1);
		pstmt.setInt(1, 4);
		//pstmt.setString(2, "E");
		//pstmt.setInt(3, 1200);
		//pstmt.setInt(4, 10);
		pstmt.execute();
		
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			if(rs != null) {
				try {
				rs.close();
				}catch(SQLException e) {
					e.printStackTrace();					
				}
				try {
					if(pstmt!=null)
						pstmt.close();					
				}catch(SQLException e) {
					e.printStackTrace();
				}
				
				}
				
			}
		System.out.print("over");
		}
		
	}
	


