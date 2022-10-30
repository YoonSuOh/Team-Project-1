<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<img src="D:\전공 공부\2022-2\융합프로젝트\team_project\src\main\webapp\carimages\<%= request.getParameter("main_pic") %>">
	<br>
	<%=request.getParameter("car_detail_model") %>
	<br>
	<%=request.getParameter("price") %>만원
	<br>
	<%=request.getParameter("year") %><%=request.getParameter("distance") %><%=request.getParameter("fuel") %>
</body>
</html>