<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int CAR_YEAR =0;
		int CAR_DISTANCE =0;
		int PRICE = 0;
		request.setCharacterEncoding("UTF-8");
		
		MultipartRequest multi = new MultipartRequest(request, "C:\\김주연교수님\\workspace\\test\\WebContent", 5*1024*1024, "utf-8", new DefaultFileRenamePolicy());
		
		String CAR_NUM = multi.getParameter("car_num");
		String MANUFAC = multi.getParameter("manufac");
		String CAR_MODEL = multi.getParameter("car_model");
		CAR_YEAR = Integer.parseInt(multi.getParameter("year"));
		CAR_DISTANCE = Integer.parseInt(multi.getParameter("car_distance"));
		String ACCIDENT_CHECK = multi.getParameter("accident_check");
		String CAR_KIND = multi.getParameter("car_kind");
		String FUEL = multi.getParameter("fuel");
		PRICE = Integer.parseInt(multi.getParameter("price"));
		
		Enumeration files = multi.getFileNames();
		String pic1 = (String) files.nextElement();
		String PIC1 = multi.getFilesystemName("pic1");
		String pic2 = (String) files.nextElement();
		String PIC2 = multi.getFilesystemName("pic2");
		String pic3 = (String) files.nextElement();
		String PIC3 = multi.getFilesystemName("pic3");
		String pic4 = (String) files.nextElement();
		String PIC4 = multi.getFilesystemName("pic4");
		String DEALER_ID = multi.getParameter("dealer_id");
		
		Connection con = null; 
		PreparedStatement pstmt = null; 
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "HR", pw = "1234";
		
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection(url, user, pw);
		
		String sql = "insert into CAR Values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
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
		pstmt.setString(10, null);
		pstmt.setString(11, null);
		pstmt.setString(12, null);
		pstmt.setString(13, null);
		pstmt.setString(14, null);
		pstmt.setString(15, DEALER_ID);
		pstmt.executeUpdate();
		
		pstmt.close();
		con.close();
%>
<script>
alert("차량 등록을 완료하였습니다.");
location.href = 'main.html'
</script>
</body>
</html>