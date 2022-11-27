<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.io.*" %>
<%@ page import="Car.CarDAO" %>
<%@ page import="Car.Car" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="CarsList.css" />
    </head>
    <body id="all_content"> 
         	<% 
         	  request.setCharacterEncoding("utf-8");
              String user_id = (String)session.getAttribute("USER_ID");
        	  String perm = (String)session.getAttribute("USER_PERM");
        	  int pageNumber = 1;
        	  
        	  if(request.getParameter("pageNumber")!= null){
        		  pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
        	  }
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
                      <a href=main.jsp><img class="logo_size" src="logo.png"></a>
                  </div>
                  <div>
                      <ul class="menu">
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
                      <a href=main.jsp><img class="logo_size" src="logo.png"></a>
                  </div>
                  <div>
                      <ul class="menu">
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
        <div class="section2">
            <div class="list">
                <div class="search">
                    <div class="searchbar">
                        <form action="CarsSearch.jsp" method="post">
                            <input class="searchs" type="search" placeholder="검색어 입력" name="model_search">
                            <button class="button">검색</button>
                        </form>
                    </div>
                </div>
                <div class="carlist">
                    <div class="header">
                        <h3 class="header_font">검색결과</h3>
                    </div>
                    <hr>
                    <div class="main">
                        <ul class="car">
                        	<%
                        		CarDAO carDAO = new CarDAO();
                        		ArrayList<Car> list = carDAO.getEasy_Search2(request.getParameter("manufac"), Integer.parseInt(request.getParameter("low_price")),Integer.parseInt(request.getParameter("high_price")));
                        		if (list.size() == 0){
                        			PrintWriter script = response.getWriter();
                        			script.println("<script>");
                        			script.println("alert('검색결과가 없습니다.')");
                        			script.println("history.back()");
        							script.println("</script>");
                        		}
                        		for(int i=0; i<list.size();i++){
                        	%>
                        	<ul class="car_li">
	                            <li>
	                                <a href="Car.jsp?LIST_NUM=<%= list.get(i).getLIST_NUM() %>">
	                                <img class="img_size" src="resources/images/<%=list.get(i).getPic1()%>"></a>
	                            </li>
	                            <li>
	                            	<h3><%=list.get(i).getCar_detail_model()%></h3>
	                            </li>
	                            <li>
	                            	<h3><%=list.get(i).getPrice()%>만원</h3>
	                            </li>
	                            <li>
	                            	<p><%=list.get(i).getCar_year()%>년식 | <%=list.get(i).getCar_distance()%>km | <%=list.get(i).getFuel()%></p>
	                            </li>
	                        </ul>
                            <%
                        		}
                            %>
                        </ul>
                    </div>
                    <div class="pageBtn">
                    	<ul class="pageBtn_ul">
	                    	<% if(pageNumber != 1){ %>
	                    	<li>
	                    		<a class="pageBtn_move" href="CarsEasySearch2.jsp?pageNumber=<%=pageNumber - 1 %>" >이전 페이지</a>
	                    	</li>
							<% } else {%>	
	                    	<li>
	                    		<a class="pageBtn_move">처음 페이지</a>	
	                    	</li>
	                    	<% } %>
	                    	<li>
	                    		<a class="pageBtn_now" href="CarsEasySearch2.jsp?pageNumber=<%=pageNumber %>"><%=pageNumber %></a>
	                    	</li>
	                    	<% if(carDAO.nextPage(pageNumber + 1)){ %>
	                    	<li>
	                    		<a class="pageBtn_move" href="CarsEasySearch2.jsp?pageNumber=<%=pageNumber + 1 %>">다음 페이지</a>	
	                    	</li>
	                    	<% } else {%>
	                    	<li>
	                    		<a class="pageBtn_move">&nbsp;마지막 페이지</a>
	                    	</li>
	                    	<% } %>
                    	</ul>
                    </div>
                </div>  
            </div>
        </div>
        <div class="footer">
            <p>v.Beta.0.0.1 | Sosa_Motors_Company | TEL. 1577-7484</p>
            <p>대표자 : 윤수오 | 사업장 : 경기도 부천시 소사로 56</p>
            <p>Copyright(c)(주)소사모터스 ALL Rights Reserved</p>
        </div>
    </body>
</html>