<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*" %>
<%@ page import="dto.Car"%>
<%@ page import="dao.CarRepository"%>

<%
	request.setCharacterEncoding("UTF-8");
	String realFolder = "D:\\전공 공부\\2022-2\\융합프로젝트\\sosa_motors\\src\\main\\webapp\\resources\\images\\"; //웹 어플리케이션상의 절대 경로
	String encType = "utf-8"; //인코딩 타입
	int maxSize = 5 * 1024 * 1024; //최대 업로드될 파일의 크기5Mb

 	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

	String car_num = multi.getParameter("car_num");
	String car_manufac = multi.getParameter("manufac");
	String car_model = multi.getParameter("car_model");
	String car_detail_model = multi.getParameter("car_detail_model");
	Integer car_year = Integer.parseInt(multi.getParameter("car_year"));
	Integer car_distance = Integer.parseInt(multi.getParameter("car_distance"));
	String accident_check = multi.getParameter("accident_check");
	String car_kind = multi.getParameter("car_kind");
	String fuel = multi.getParameter("fuel");
	Integer price= Integer.parseInt(multi.getParameter("price"));
	
	String dealer_id = multi.getParameter("dealer_id");
	String dealer_phone = multi.getParameter("dealer_phone");
	
 	Enumeration files = multi.getFileNames();
 	String PIC1 = (String) files.nextElement();
	String filename_1 = multi.getFilesystemName(PIC1);
	
	
	CarRepository dao = CarRepository.getInstance();

	Car car = new Car();
	car.setCar_num(car_num);
	car.setManufacturer(car_manufac);
	car.setCar_model(car_model);
	car.setCar_detail_model(car_detail_model);
	car.setCar_year(car_year);
	car.setCar_distance(car_distance);
	car.setAccident_check(accident_check);
	car.setCarkind(car_kind);
	car.setFuel(fuel);
	car.setPrice(price);
	car.setDealer_id(dealer_id);
	car.setDealer_phone(dealer_phone);
	car.setPic1(filename_1);

	dao.addCar(car);

	response.sendRedirect("Cars.jsp");
%>