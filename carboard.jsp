<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>

<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String model = request.getParameter("model");
	Connection con = null;
	Statement stmt = null;
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "YOON", pw = "3304";
	Class.forName("oracle.jdbc.OracleDriver");
	con = DriverManager.getConnection(url, user, pw);
	stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery("select * from CAR where CAR_DETAIL_MODEL='"+ model + "'");
	while (rs.next()) {
			String CarNum = rs.getString("CAR_NUM");
			String MANUFAC = rs.getString("MANUFAC");
			String CAR_DETAIL_MODEL = rs.getString("CAR_DETAIL_MODEL");
			String CAR_MODEL = rs.getString("CAR_MODEL");
			String CAR_YEAR = rs.getString("CAR_YEAR");
			String CAR_DISTANCE = rs.getString("CAR_DISTANCE");
			String ACCIDENT_CHECK = rs.getString("ACCIDENT_CHEACK");
			String CAR_KIND = rs.getString("CAR_KIND");
			String FUEL = rs.getString("FUEL");
			String PRICE = rs.getString("PRICE");
			String DEALER_ID = rs.getString("DEALER_ID");
			String ADMIN_PERM = rs.getString("ADMIN_PERM");
			String mainPIC = rs.getString("PIC1");
			String PIC2 = rs.getString("PIC2");
			String PIC3 = rs.getString("PIC3");
			String PIC4 = rs.getString("PIC4");
			String PIC5 = rs.getString("PIC5");
			String PIC6 = rs.getString("PIC6");
			String PIC7 = rs.getString("PIC7");
			String PIC8 = rs.getString("PIC8");
			String PIC9 = rs.getString("PIC9");
			String PIC10 = rs.getString("PIC10");
			String PIC11 = rs.getString("PIC11");
			String PIC12 = rs.getString("PIC12");
			String PIC13 = rs.getString("PIC13");
			String PIC14 = rs.getString("PIC14");
			String PIC15 = rs.getString("PIC15");
			String PIC16 = rs.getString("PIC16");
			String PIC17 = rs.getString("PIC17");
			String PIC18 = rs.getString("PIC18");
			String PIC19 = rs.getString("PIC19");
			String PIC20 = rs.getString("PIC20");
	}
%>
<img src="D:\전공 공부\2022-2\융합프로젝트\team_project\src\main\webapp\carimages\<%= mainPIC %>">
<h5><%= CAR_DETAIL_MODEL %></h5>
<br>
<%= PRICE %>
<br>
<%= CAR_YEAR %><%= CAR_DISTANCE %><%= FUEL %>
</body>
</html>