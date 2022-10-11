<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		request.setCharacterEncoding("UTF-8");
		String USER_ID = request.getParameter("loginid");
		String USER_NICK = request.getParameter("nickname");
		String USER_PW = request.getParameter("loginpw");
		String USER_NAME = request.getParameter("loginid");
		String USER_PERMISSION = "member";
		String USER_EMAIL = request.getParameter("email");
		String USER_PHONE = request.getParameter("tel");
		
		Connection con = null; 
		PreparedStatement pstmt = null; 
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "HR", pw = "1234";
		
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection(url, user, pw);
		
		String sql = "insert into MEMBERS Values (?, ?, ?, ?, ?, ?, ?)";
		
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, USER_ID);
		pstmt.setString(2, USER_NICK);
		pstmt.setString(3, USER_PW);
		pstmt.setString(4, USER_NAME);
		pstmt.setString(5, USER_PERMISSION);
		pstmt.setString(6, USER_EMAIL);
		pstmt.setString(7, USER_PHONE);
		pstmt.executeUpdate();
		
		pstmt.close();
		con.close();
		
%>
</body>
<script>
alert("축하합니다. 회원가입을 완료하였습니다!");
location.href = 'main.html'
</script>
</html>