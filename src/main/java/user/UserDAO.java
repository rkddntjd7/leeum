package user;

import user.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() {
		try {
			String dbID = "root";
			String dbPassword = "!+(Ye:m6V;t;";
			String dbURL = "jdbc:mysql://13.124.74.6:3306/leeum";
			
			
			//개인정보로 바꿔야 하는 부분임
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(dbURL, dbID, dbPassword);
			System.out.println("연결성공");
			
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("연결실패");
		}
	}
	
	public int join(UserDTO user) {
		

		String sql = "insert into user values(num,?,?,?,?,?,?,?,?,?,?,?,sysdate());";

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, user.getUname());
			pstmt.setString(2, user.getUbirth());
			pstmt.setString(3, user.getUid());
			pstmt.setString(4, user.getUpass());
			pstmt.setString(5, user.getUtel());
			pstmt.setString(6, user.getUemail());
			pstmt.setInt(7, user.getUpostcode());
			pstmt.setString(8, user.getUaddr());
			pstmt.setString(9, user.getUdetailaddr());
			pstmt.setString(10, user.getUgender());
			pstmt.setString(11, user.getAgree());

			//pstmt.setString(12, user.getWdate());

			
					pstmt.executeUpdate();
					return 1;
		}catch(Exception e) {
			e.printStackTrace();
		}return -1;
	}
	
	

	
	public int idCheck(UserDTO user) {

			String sql = "select * from user where uid = ?";
			
			try {
			
				PreparedStatement pstmt = con.prepareStatement(sql);
				pstmt.setString(1, user.getUid());
				rs = pstmt.executeQuery();
				
				// 중복된 아이디가 있으면 1로 반환
				if (rs.next()) {
					return 1;
				} else { // 아이디 없으면 0 반환
					return 0;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			// 오류 발생 시 -1 반환
			return -1;
	}
	
	public int login(String uid, String upass) {
		String SQL = "select * from user where uid = ? and upass = ?";
		try {
			pstmt = con.prepareStatement(SQL);
			pstmt.setString(1, uid);
			pstmt.setString(2, upass);
			rs = pstmt.executeQuery(); 
			if (rs.next())
				return 1; //로그인 성공
			else {
				return 0; //로그인 실패
			}
								
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		return -2; //DB 오류 
	}
	
	
	public UserDTO findId(String uname, String uemail) {
		UserDTO userid = null;
		String sql = "select * from user where uname=? and uemail=?";
		
		try {
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, uname);
			pstmt.setString(2, uemail);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				userid = new UserDTO();
				userid.setUname(rs.getString("uname"));
				userid.setUid(rs.getString("uid"));
				userid.setUpass(rs.getString("upass"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return userid;
	}
	
	

}
