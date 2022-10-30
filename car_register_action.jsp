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
	//car_register.jsp에서 입력값 넘겨받기
		request.setCharacterEncoding("UTF-8");
	
		int CAR_YEAR =0;
		int CAR_DISTANCE =0;
		int PRICE = 0;
		
		MultipartRequest multi = new MultipartRequest(request, "D:\\전공 공부\\2022-2\\융합프로젝트\\team_project\\src\\main\\webapp\\carimages", 5*1024*1024, "utf-8", new DefaultFileRenamePolicy());
		
		String CAR_NUM = multi.getParameter("car_num");
		String MANUFAC = multi.getParameter("manufac");
		String CAR_MODEL = multi.getParameter("car_model");
		String CAR_DETAIL_MODEL = multi.getParameter("car_detail_model");
		CAR_YEAR = Integer.parseInt(multi.getParameter("year"));
		CAR_DISTANCE = Integer.parseInt(multi.getParameter("car_distance"));
		String ACCIDENT_CHECK = multi.getParameter("accident_check");
		String CAR_KIND = multi.getParameter("car_kind");
		String FUEL = multi.getParameter("fuel");
		PRICE = Integer.parseInt(multi.getParameter("price"));
		String DEALER_ID = multi.getParameter("dealer_id");
		String ADMIN_PERM = null;
		Enumeration files = multi.getFileNames();
		String PIC20 = (String) files.nextElement();
		String filename_15 = multi.getFilesystemName(PIC20);
		
		String PIC19 = (String) files.nextElement();
		String filename_14 = multi.getFilesystemName(PIC19);
		
		String PIC18 = (String) files.nextElement();
		String filename_13 = multi.getFilesystemName(PIC18);
		
		String PIC17 = (String) files.nextElement();
		String filename_12 = multi.getFilesystemName(PIC17);
		
		String PIC16 = (String) files.nextElement();
		String filename_11 = multi.getFilesystemName(PIC16);
		
		String PIC15 = (String) files.nextElement();
		String filename_10 = multi.getFilesystemName(PIC15);
		
		String PIC14 = (String) files.nextElement();
		String filename_20 = multi.getFilesystemName(PIC14);
		
		String PIC13 = (String) files.nextElement();
		String filename_9 = multi.getFilesystemName(PIC13);
		
		String PIC12 = (String) files.nextElement();
		String filename_8 = multi.getFilesystemName(PIC12);
		
		String PIC11 = (String) files.nextElement();
		String filename_7 = multi.getFilesystemName(PIC11);
		
		String PIC10 = (String) files.nextElement();
		String filename_6 = multi.getFilesystemName(PIC10);
		
		String PIC9 = (String) files.nextElement();
		String filename_5 = multi.getFilesystemName(PIC9);
		
		String PIC8 = (String) files.nextElement();
		String filename_4 = multi.getFilesystemName(PIC8);
		
		String PIC7 = (String) files.nextElement();
		String filename_3 = multi.getFilesystemName(PIC7);
		
		String PIC6 = (String) files.nextElement();
		String filename_2 = multi.getFilesystemName(PIC6);
		
		String PIC5 = (String) files.nextElement();
		String filename_1 = multi.getFilesystemName(PIC5);
		
		String PIC4 = (String) files.nextElement();
		String filename_19 = multi.getFilesystemName(PIC4);
		
		String PIC3 = (String) files.nextElement();
		String filename_18 = multi.getFilesystemName(PIC3);
		
		String PIC2 = (String) files.nextElement();
		String filename_17 = multi.getFilesystemName(PIC2);
		
		String PIC1 = (String) files.nextElement();
		String filename_16 = multi.getFilesystemName(PIC1);
		// DB 접속부
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "YOON", pw = "3304";
		Connection con = DriverManager.getConnection(url, user, pw); 
		Statement pstmt = con.createStatement();
		Class.forName("oracle.jdbc.OracleDriver");
		String sql = "insert into CAR" + "(LIST_NUM, CAR_NUM, MANUFAC, CAR_MODEL, CAR_DETAIL_MODEL, CAR_YEAR, CAR_DISTANCE, ACCIDENT_CHECK, CAR_KIND, FUEL, PRICE, DEALER_ID, ADMIN_PERM, PIC1, PIC2, PIC3, PIC4, PIC5, PIC6, PIC7, PIC8, PIC9, PIC10, PIC11, PIC12, PIC13, PIC14, PIC15, PIC16, PIC17, PIC18, PIC19, PIC20)" + "Values (LISTNO.nextval, '"+CAR_NUM+"', '"+MANUFAC+"', '"+CAR_MODEL+"', '"+CAR_DETAIL_MODEL+"', '"+CAR_YEAR+"', '"+CAR_DISTANCE+"', '"+ACCIDENT_CHECK+"', '"+CAR_KIND+"', '"+FUEL+"', '"+PRICE+"', '"+DEALER_ID+"', '"+ADMIN_PERM+"', '"+filename_1+"', '"+filename_2+"', '"+filename_3+"', '"+filename_4+"', '"+filename_5+"', '"+filename_6+"', '"+filename_7+"', '"+filename_8+"', '"+filename_9+"', '"+filename_10+"', '"+filename_11+"', '"+filename_12+"', '"+filename_13+"', '"+filename_14+"', '"+filename_15+"', '"+filename_16+"', '"+filename_17+"', '"+filename_18+"', '"+filename_19+"', '"+filename_20+"')";
		
		pstmt.executeUpdate(sql);
		
		pstmt.close();
		con.close();
%>
</body>
	<script>
		alert('차량 등록 성공!');
		location.href = 'main.jsp';
	</script>