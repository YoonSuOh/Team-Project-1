<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="Car.Car" %>
<%@ page import="Car.CarDAO" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="Car.css" />
	</head>
	<body id="all_content">
		<% 
          String user_id = (String)session.getAttribute("USER_ID");
      	  String perm = (String)session.getAttribute("USER_PERM");
      	  int LIST_NUM = 0;
      	  if(request.getParameter("LIST_NUM")!=null){
      		  LIST_NUM = Integer.parseInt(request.getParameter("LIST_NUM"));
      	  }
      	  
      	  if(LIST_NUM == 0){
	      		PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('유효하지 않은 글입니다')");
				script.println("location.href='bbs.jsp'");
				script.println("</script");
      	  }
      	  Car car = new CarDAO().getCar(LIST_NUM);
        %>
        <% if(user_id==null) {%>
		<div class="section1">
              <div class="main_nav">
                  <div>
                      <ul class="sign">
                          <li><a href="login.jsp">로그인</a></li>
                          <li> | </li>
                          <li><a href="signup.jsp">회원가입</a></li>
                      </ul>
                  </div>
                  <div class="logo">
                      <a href=main.jsp><img class="logo_size" src="logo.png"></a>
                  </div>
                  <div>
                      <ul class="menu">
                          <li><a href="detail_search.jsp">상세검색</a></li>
                          <li>|</li>
                          <li><a href="board_report.jsp">신고</a></li>
                          <li>|</li>
                          <li><a href="Cars.jsp">전체 차량 보기</a></li>
                          <li>|</li>
                          <li><a href="board.jsp">게시판</a></li>
                      </ul>
                  </div>
              </div>
          </div>
	<% }else if(perm == "dealer"){%>
	<div class="section1">
              <div class="main_nav">
                  <div>
                      <ul class="sign">
					<li><strong><%=user_id %></strong>님</li>
                          <li> | </li>
                          <li><a href="logout.jsp">로그아웃</a></li>
                          <li> | </li>
                          <li><a href="addCar.jsp">차량등록</a></li>
                      </ul>
                  </div>
                  <div class="logo">
                      <a href=main.html><img class="logo_size" src="logo.png"></a>
                  </div>
                  <div>
                      <ul class="menu">
                          <li><a href="detail_search.jsp">상세검색</a></li>
                          <li>|</li>
                          <li><a href="board_report.jsp">신고</a></li>
                          <li>|</li>
                          <li><a href="Cars.jsp">전체 차량 보기</a></li>
                          <li>|</li>
                          <li><a href="board.jsp">게시판</a></li>
                      </ul>
                  </div>
              </div>
          </div>
	<% }else if(perm == "admin"){%>
	<div class="section1">
              <div class="main_nav">
                  <div>
                      <ul class="sign">
					<li><strong><%=user_id %></strong>님</li>
                          <li> | </li>
                          <li><a href="logout.jsp">로그아웃</a></li>
                          <li> | </li>
                          <li><a href="addCar.jsp">차량등록</a></li>
                          <li> | </li>
                          <li><a href="admin_main.jsp">관리자 페이지</a></li>
                      </ul>
                  </div>
                  <div class="logo">
                      <a href=main.html><img class="logo_size" src="logo.png"></a>
                  </div>
                  <div>
                      <ul class="menu">
                          <li><a href="detail_search.jsp">상세검색</a></li>
                          <li>|</li>
                          <li><a href="board_report.jsp">신고</a></li>
                          <li>|</li>
                          <li><a href="Cars.jsp">전체 차량 보기</a></li>
                          <li>|</li>
                          <li><a href="board.jsp">게시판</a></li>
                      </ul>
                  </div>
              </div>
          </div>
	<% }else {%>
	<div class="section1">
              <div class="main_nav">
                  <div>
                      <ul class="sign">
					<li><strong><%=user_id %></strong>님</li>
                          <li> | </li>
                          <li><a href="logout.jsp">로그아웃</a></li>
                      </ul>
                  </div>
                  <div class="logo">
                      <a href=main.jsp><img class="logo_size" src="logo.png"></a>
                  </div>
                  <div>
                      <ul class="menu">
                          <li><a href="detail_search.jsp">상세검색</a></li>
                          <li>|</li>
                          <li><a href="board_report.jsp">신고</a></li>
                          <li>|</li>
                          <li><a href="Cars.jsp">전체 차량 보기</a></li>
                          <li>|</li>
                          <li><a href="board.jsp">게시판</a></li>
                          <li>|</li>
                          <li><a href="addCar.jsp">차량등록</a></li>
                      </ul>
                  </div>
              </div>
          </div>
	<% }%>
	</body>
	<div class="section2">
		<div class="header">
			<h2 class="detail_model"><%=car.getCar_detail_model() %></h2>
			<img class="header_img" src="resources/images/<%=car.getPic1()%>">
		</div>
		
	</div>
	<br>
	<div class="section3">
		<div class="detail">
			<h3 class="detail_header"><%=car.getPrice()%>만원 | <%=car.getCar_num() %></h3>
			<p><b>제조사</b> : <%=car.getManufacturer()%>
			<p><b>연식</b> : <%=car.getCar_year() %>
			<p><b>주행거리</b> : <%=car.getCar_distance() %>Km
			<p><b>차종분류</b> : <%=car.getCarkind()%>
			<p><b>연료</b> : <%=car.getFuel()%>
			<p><b>판매자 아이디</b> : <%=car.getDealer_id()%>
			<p><b>판매자 전화번호</b> : <%=car.getDealer_phone()%>
		</div>
	</div>
	<div class="footer">
            <p>v.Beta.0.0.1 | Sosa_Motors_Company | TEL. 1577-7484</p>
            <p>대표자 : 윤수오 | 사업장 : 경기도 부천시 소사로 56</p>
            <p>Copyright(c)(주)소사모터스 ALL Rights Reserved</p>
        </div>
</html>