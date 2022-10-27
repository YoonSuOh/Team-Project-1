<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import = "java.util.*" %>
<%@ page import = "java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	
		int CAR_YEAR =0;
		int CAR_DISTANCE =0;
		int PRICE = 0;
		
		MultipartRequest multi = new MultipartRequest(request, "D:\\proj", 5*1024*1024, "utf-8", new DefaultFileRenamePolicy());
		
		String CAR_NUM = multi.getParameter("car_num");
		String MANUFAC = multi.getParameter("manufac");
		String CAR_MODEL = multi.getParameter("car_model");
		CAR_YEAR = Integer.parseInt(multi.getParameter("year"));
		CAR_DISTANCE = Integer.parseInt(multi.getParameter("car_distance"));
		String ACCIDENT_CHECK = multi.getParameter("accident_check");
		String CAR_KIND = multi.getParameter("car_kind");
		String FUEL = multi.getParameter("fuel");
		PRICE = Integer.parseInt(multi.getParameter("price"));
		String DEALER_ID = multi.getParameter("dealer_id");
		
		Enumeration files = multi.getFileNames();
		
		String PIC2 = (String) files.nextElement();
		String car_2 = multi.getFilesystemName(PIC2);
		
		String PIC1 = (String) files.nextElement();
		String car_1 = multi.getFilesystemName(PIC1);
		
		Connection con = null; 
		PreparedStatement pstmt = null; 
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "scott", pw = "3304";
		
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection(url, user, pw);
		
		String sql = "insert into CAR Values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, CAR_NUM);
		pstmt.setString(2, MANUFAC);
		pstmt.setString(3, CAR_MODEL);
		pstmt.setInt(4, CAR_YEAR);
		pstmt.setInt(5, CAR_DISTANCE);
		pstmt.setString(6, ACCIDENT_CHECK);
		pstmt.setString(7, CAR_KIND);
		pstmt.setString(8, FUEL);
		pstmt.setInt(9, PRICE);
		pstmt.setString(10, DEALER_ID);
		pstmt.setString(11, null);
		pstmt.setString(12, null);
		pstmt.setString(13, PIC1);
		pstmt.setString(14, PIC2);
		pstmt.executeUpdate();
		
		pstmt.close();
		con.close();
%>
	<table border="1">
		<%
			out.print("<tr><td>" + car_1 + " </td>" );
			out.print("<td>" + car_2 + " </td></tr>\n" );
		%>
	</table>
</body>
</html>