<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% 
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try{
		String dburl = "jdbc:oracle:thin:@localhost:1521:xe";
		String dbuser = "YOON";
		String dbpasswd = "3304";
		
		Class.forName("oracle.jdbc.OracleDriver");
		conn = DriverManager.getConnection(dburl,dbuser,dbpasswd);
	} catch (SQLException e){
		out.println("DB 접속이 거부되었습니다.");
		out.println("SQLException : " + e.getMessage());
	}
%>		