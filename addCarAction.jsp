<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@ page import="Car.CarDAO"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.RequestDispatcher" %>
<%@ page import="javax.servlet.ServletException" %>
<%@ page import="javax.servlet.http.HttpServlet" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="Car" class="Car.Car" scope="page"/>
<jsp:setProperty name="Car" property="pic1"/>
<jsp:setProperty name="Car" property="car_detail_model"/>
<jsp:setProperty name="Car" property="price"/>
<jsp:setProperty name="Car" property="car_year"/>
<jsp:setProperty name="Car" property="car_distance"/>
<jsp:setProperty name="Car" property="fuel"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String user_id = null;
	%>
	<%
		int result = CarDAO.addCar(request, response, Car.getCar_num(), Car.getManufacturer(),Car.getCar_model(),Car.getCar_detail_model(),Car.getCar_year(),Car.getCar_distance(),Car.getAccident_check(),Car.getCarkind(),Car.getFuel(),Car.getPrice(),user_id,Car.getDealer_phone(),Car.getPic1());
		if(result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('차량 등록에 실패하였습니다.')");
			script.println("history.back()");
			script.println("</script>");
		}else{
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('차량 등록에 성공하였습니다.')");
			script.println("location.href='Cars.jsp'");
			script.println("</script>");
		}
	%>
</body>
</html>