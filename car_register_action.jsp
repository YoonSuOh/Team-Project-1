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
		
		MultipartRequest multi = new MultipartRequest(request, "D:\\전공 공부\\2022-2\\융합프로젝트\\team_project\\src\\main\\webapp", 5*1024*1024, "utf-8", new DefaultFileRenamePolicy());
		
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
		
		String PIC20 = (String) files.nextElement();
		String car_20 = multi.getFilesystemName(PIC20);
		
		String PIC19 = (String) files.nextElement();
		String car_19 = multi.getFilesystemName(PIC19);
		
		String PIC18 = (String) files.nextElement();
		String car_18 = multi.getFilesystemName(PIC18);
		
		String PIC17 = (String) files.nextElement();
		String car_17 = multi.getFilesystemName(PIC17);
		
		String PIC16 = (String) files.nextElement();
		String car_16 = multi.getFilesystemName(PIC16);
		
		String PIC15 = (String) files.nextElement();
		String car_15 = multi.getFilesystemName(PIC15);
		
		String PIC14 = (String) files.nextElement();
		String car_14 = multi.getFilesystemName(PIC14);
		
		String PIC13 = (String) files.nextElement();
		String car_13 = multi.getFilesystemName(PIC13);
		
		String PIC12 = (String) files.nextElement();
		String car_12 = multi.getFilesystemName(PIC12);
		
		String PIC11 = (String) files.nextElement();
		String car_11 = multi.getFilesystemName(PIC11);
		
		String PIC10 = (String) files.nextElement();
		String car_10 = multi.getFilesystemName(PIC10);
		
		String PIC9 = (String) files.nextElement();
		String car_9 = multi.getFilesystemName(PIC9);
		
		String PIC8 = (String) files.nextElement();
		String car_8 = multi.getFilesystemName(PIC8);
		
		String PIC7 = (String) files.nextElement();
		String car_7 = multi.getFilesystemName(PIC7);
		
		String PIC6 = (String) files.nextElement();
		String car_6 = multi.getFilesystemName(PIC6);
		
		String PIC5 = (String) files.nextElement();
		String car_5 = multi.getFilesystemName(PIC5);
		
		String PIC4 = (String) files.nextElement();
		String car_4 = multi.getFilesystemName(PIC4);
		
		String PIC3 = (String) files.nextElement();
		String car_3 = multi.getFilesystemName(PIC3);
		
		String PIC2 = (String) files.nextElement();
		String car_2 = multi.getFilesystemName(PIC2);
		
		String PIC1 = (String) files.nextElement();
		String car_1 = multi.getFilesystemName(PIC1);
		
		Connection con = null; 
		PreparedStatement pstmt = null; 
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "YOON", pw = "3304";
		
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection(url, user, pw);
		
		String sql = "insert into CAR Values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
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
		pstmt.setString(15, PIC3);
		pstmt.setString(16, PIC4);
		pstmt.setString(17, PIC5);
		pstmt.setString(18, PIC6);
		pstmt.setString(19, PIC7);
		pstmt.setString(20, PIC8);
		pstmt.setString(21, PIC9);
		pstmt.setString(22, PIC10);
		pstmt.setString(23, PIC11);
		pstmt.setString(24, PIC12);
		pstmt.setString(25, PIC13);
		pstmt.setString(26, PIC14);
		pstmt.setString(27, PIC15);
		pstmt.setString(28, PIC16);
		pstmt.setString(29, PIC17);
		pstmt.setString(30, PIC18);
		pstmt.setString(31, PIC19);
		pstmt.setString(32, PIC20);
		pstmt.executeUpdate();
		
		pstmt.close();
		con.close();
%>
	<table border="1">
		<%
			out.print("<tr><td>" + PIC1 + " </td>" );
			out.print("<td>" + PIC2 + " </td>" );
			out.print("<td>" + PIC3 + " </td>" );
			out.print("<td>" + PIC4 + " </td>" );
			out.print("<td>" + PIC5 + " </td>" );
			out.print("<td>" + PIC6 + " </td>" );
			out.print("<td>" + PIC7 + " </td>" );
			out.print("<td>" + PIC8 + " </td>" );
			out.print("<td>" + PIC9 + " </td>" );
			out.print("<td>" + PIC10 + " </td>" );
			out.print("<td>" + PIC11 + " </td>" );
			out.print("<td>" + PIC12 + " </td>" );
			out.print("<td>" + PIC13 + " </td>" );
			out.print("<td>" + PIC14 + " </td>" );
			out.print("<td>" + PIC15 + " </td>" );
			out.print("<td>" + PIC16 + " </td>" );
			out.print("<td>" + PIC17 + " </td>" );
			out.print("<td>" + PIC18 + " </td>" );
			out.print("<td>" + PIC19 + " </td>" );
			out.print("<td>" + PIC20 + " </td></tr>\n" );
		%>
	</table>
</body>
</html>