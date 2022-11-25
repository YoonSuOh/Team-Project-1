<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
제조사 : 
	<% 
		String[] manufac = request.getParameterValues("manufac");
		if(manufac!= null){
			for(int i=0;i<manufac.length;i++){
				out.println(manufac[i]);
			}
		}
	
	%>
최소가격 : 
	<% 
		String[] low_price = request.getParameterValues("low_price");
		if(low_price!= null){
			for(int i=0;i<low_price.length;i++){
				out.println(low_price[i]);
			}
		}
	
	%>
최대가격 :
	<% 
		String[] high_price = request.getParameterValues("high_price");
		if(high_price!= null){
			for(int i=0;i<high_price.length;i++){
				out.println(high_price[i]);
			}
		}
	
	%>
</body>
</html>