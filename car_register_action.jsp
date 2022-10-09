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
		int CAR_YEAR =0;
		int CAR_DISTANCE =0;
		int PRICE = 0;
		request.setCharacterEncoding("UTF-8");
		
		String CAR_NUM = request.getParameter("car_num");
		String MANUFAC = request.getParameter("manufac");
		String CAR_MODEL = request.getParameter("car_model");
		CAR_YEAR = Integer.parseInt(request.getParameter("year"));
		CAR_DISTANCE = Integer.parseInt(request.getParameter("car_distance"));
		String ACCIDENT_CHECK = request.getParameter("accident_check");
		String CAR_KIND = request.getParameter("car_kind");
		String FUEL = request.getParameter("fuel");
		PRICE = Integer.parseInt(request.getParameter("price"));
		String DEALER_ID = request.getParameter("dealer_id");
		
		Connection con = null; 
		PreparedStatement pstmt = null; 
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "HR", pw = "1234";
		
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection(url, user, pw);
		
		String sql = "insert into CAR Values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
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
		pstmt.setString(11, DEALER_ID);
		pstmt.setString(12, null);
		pstmt.setString(13, null);
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