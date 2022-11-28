
package bbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BbsDAO {

	private Connection conn;
	private ResultSet rs;
	
	//기본 생성자
	public BbsDAO() {
		try {
			String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
			String dbID = "YOON";
			String dbPassword = "3304";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	//작성일자 메소드
	public String getDate() {
		String sql = "select sysdate from dual";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return ""; //데이터베이스 오류
	}
	
	//게시글 번호 부여 메소드
	public int getNext() {
		//현재 게시글을 내림차순으로 조회하여 가장 마지막 글의 번호를 구한다
		String sql = "select b_cord from board order by b_cord desc";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1; //첫 번째 게시물인 경우
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}
	
	//글쓰기 메소드
	public int write(int comment_cord,
			String user_nick, String perm, String b_date, String title,
			String content, String user_id) {
		String sql = "insert into board values(?, ?, ?, ?, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, getNext());
			pstmt.setInt(2, comment_cord);
			pstmt.setString(3, user_nick);
			pstmt.setString(4, perm);
			pstmt.setString(5, getDate());
			pstmt.setString(6, title);
			pstmt.setString(7, content);
			pstmt.setString(8, user_id);
			pstmt.setInt(9, 1); //글의 유효번호
			return pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}
	
	//게시글 리스트 메소드
	public ArrayList<Bbs> getList(int pageNumber){
		String sql = "select * from board where b_cord < ? and b_num = 1 AND ROWNUM <= 10 ORDER BY b_cord desc";
		ArrayList<Bbs> list = new ArrayList<Bbs>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Bbs bbs = new Bbs();
				bbs.setB_cord(rs.getInt(1));
				bbs.setComment_cord(rs.getInt(2));
				bbs.setB_num(rs.getInt(3));
				bbs.setUser_nick(rs.getString(4));
				bbs.setPerm(rs.getString(5));
				bbs.setB_date(rs.getString(6));
				bbs.setTitle(rs.getString(7));
				bbs.setContent(rs.getString(8));
				bbs.setUser_id(rs.getString(9));
				list.add(bbs);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	//페이징 처리 메소드
	public boolean nextPage(int pageNumber) {
		String sql = "select * from board where b_cord < ? and b_num = 1";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return true;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	//하나의 게시글을 보는 메소드
	public Bbs getBbs(int b_cord) {
		String sql = "select * from board where b_cord = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, b_cord);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				Bbs bbs = new Bbs();
				bbs.setB_cord(rs.getInt(1));
				bbs.setComment_cord(rs.getInt(2));
				bbs.setB_num(rs.getInt(3));
				bbs.setUser_nick(rs.getString(4));
				bbs.setPerm(rs.getString(5));
				bbs.setB_date(rs.getString(6));
				bbs.setTitle(rs.getString(7));
				bbs.setContent(rs.getString(8));
				bbs.setUser_id(rs.getString(9));
				return bbs;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	//게시글 수정 메소드
		public int update(int b_cord, String title, String content) {
			String sql = "update board set title = ?, content = ? where b_cord = ?";
			try {
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, title);
				pstmt.setString(2, content);
				pstmt.setInt(3, b_cord);
				return pstmt.executeUpdate();
			}catch (Exception e) {
				e.printStackTrace();
			}
			return -1; //데이터베이스 오류
		}
		
		//게시글 삭제 메소드
		public int delete(int b_cord) {
			//실제 데이터를 삭제하는 것이 아니라 게시글 유효숫자를 '0'으로 수정한다
			String sql = "update board set b_num = 0 where b_cord = ?";
			try {
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, b_cord);
				return pstmt.executeUpdate();
			}catch (Exception e) {
				e.printStackTrace();
			}
			return -1; //데이터베이스 오류 
		}
	
}