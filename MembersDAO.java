package Members;

import java.sql.*;

public class MembersDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public MembersDAO() {
		try {
			String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
			String dbID = "YOON"; /* 노트북 개발시 C##Scott */
			String dbPW = "3304";
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPW);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public int login(String USER_ID, String USER_PW, String USER_PERM) {
		String sql = "SELECT USER_PW FROM MEMBERS WHERE USER_ID=?";
		try{/* 쿼리문 */
	        pstmt = conn.prepareStatement(sql); /*conn으로 연결한뒤 , statement로 값을 넘긴다,쿼리문을 실행한다.  */
	        pstmt.setString(1,USER_ID);/*쿼리문에 1번쨰 ?로 입력 될 값 id가 들어간다.  */
	        rs = pstmt.executeQuery();/*execute(실행한다)Query를 */
	        if(rs.next()) {
	        	if(rs.getString(1).equals(USER_PW)) {
	        		return 1;
	        	} else
	        		return 0;
	        }
	        return -1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2;
	}
	
	public int join(Members Members) {
		String sql = "insert into MEMBERS Values (?, ?, ?, ?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, Members.getUSER_ID());
			pstmt.setString(2, Members.getUSER_NICK());
			pstmt.setString(3, Members.getUSER_PW());
			pstmt.setString(4, Members.getUSER_NAME());
			pstmt.setString(5, Members.getUSER_PERM());
			pstmt.setString(6, Members.getUSER_EMAIL());
			pstmt.setString(7, Members.getUSER_PHONE());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public String find_id(String USER_NAME, String USER_EMAIL) {
		String id = null;
		String sql = "SELECT USER_ID FROM MEMBERS WHERE USER_NAME=? AND USER_EMAIL=?";
		try{/* 쿼리문 */
	        pstmt = conn.prepareStatement(sql); /*conn으로 연결한뒤 , statement로 값을 넘긴다,쿼리문을 실행한다.  */
	        pstmt.setString(1, USER_NAME);/*쿼리문에 1번쨰 ?로 입력 될 값 id가 들어간다.  */
	        pstmt.setString(2, USER_EMAIL);
	        rs = pstmt.executeQuery();/*execute(실행한다)Query를 */
	        if(rs.next()) {
	        	id = rs.getString("USER_ID");
	        }
		} catch (Exception e) {
			e.printStackTrace();
		}
		return id;
	}
	public String find_pw(String USER_ID) {
		String id = null;
		String sql = "SELECT USER_PW FROM MEMBERS WHERE USER_ID=?";
		try{/* 쿼리문 */
	        pstmt = conn.prepareStatement(sql); /*conn으로 연결한뒤 , statement로 값을 넘긴다,쿼리문을 실행한다.  */
	        pstmt.setString(1, USER_ID);/*쿼리문에 1번쨰 ?로 입력 될 값 id가 들어간다.  */
	        rs = pstmt.executeQuery();/*execute(실행한다)Query를 */
	        if(rs.next()) {
	        	id = rs.getString("USER_ID");
	        }
		} catch (Exception e) {
			e.printStackTrace();
		}
		return id;
	}
}
