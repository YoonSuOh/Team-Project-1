<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		Connection conn = null;
		try{
			String url = "jdbc:oracle:thin:@localhost:1521:orcl";
			String user = "HR";
			String password = "1234";
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, password); // url, user, password를 변수로 처리해도됨
			out.print("데이터베이스 연결이 성공했습니다.");
		} catch(SQLException ex) {
			out.print("데이터베이스 연결이 실패했습니다.");
			out.print("SQLException : " + ex.getMessage());
		}finally{
			if(conn != null) {
				conn.close();
			}
		}
	%>
</body>
</html>