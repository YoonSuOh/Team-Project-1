<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
      <head>
          <meta charset="utf-8">
          <meta name="viewport" content="width=device-width, initial-scale=1">
          <title>정직한 중고차:소사모터스</title>
          <script src="jquery-3.6.0.js"></script>
          <script src="//code.jquery.com/jquery.min.js"></script>
          <script src='//cdnjs.cloudflare.com/ajax/libs/jquery-chained/1.0.1/jquery.chained.min.js'></script>
          <link rel="stylesheet" type="text/css" href="main.css" />
      </head>
      <body id="all_content">	
      	<% 
            String user_id = (String)session.getAttribute("USER_ID");
      	  	String perm = (String)session.getAttribute("USER_PERM");
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
              <div class="ad">
                  <img class="ad_size" src="AD.png">
              </div>
          </div>
		 <div class="section3">
              <div class="car_search">
                  <p class="search_text">원하시는 차가 있으신가요?</p>
                  <form action="CarsSearch.jsp" name="search" method="post">
                      <input class="car_searchbar" type="search" name="model_search" placeholder="모델명을 입력해주세요. 예)K3">
                  </form>
              </div>
              <div class="car_search_choice">
                  <div class="choice_menu">
                      <ul class="choice_menu_ul">
                          <li class="tab-link current" data-tab="tab-1">차 이름을 알고 있어요</li>
                          <li class="tab-link" data-tab="tab-2">가격이 싼 차를 사고 싶어요</li>
                          <li class="tab-link" data-tab="tab-3">차종.연식별로 찾고 있어요</li>
                      </ul>
                  </div>
              </div> 
                  <div id="tab-1" class="choice_list current">
                      <form class="choice_list_design" action="CarsEasySearch1.jsp" method="post" name="car_choice">
                           <select class="select_design" id="manufac" name="manufac">
                              <option value="">-- 제조사 --</option>
                              <option value="현대">현대</option>
                              <option value="제네시스">제네시스</option>
                              <option value="기아">기아</option>
                              <option value="쉐보레">쉐보레</option>
                              <option value="르느삼성">르느삼성</option>
                              <option value="쌍용">쌍용</option>
                            </select>
                            <select class="select_design" id="model" name="model">
                              <option value="">-- 모델 --</option>
                              <option value="아반떼" class="현대">아반떼</option>
                              <option value="쏘나타" class="현대">쏘나타</option>
                              <option value="그랜저" class="현대">그랜저</option>
                              <option value="i30" class="현대">i30</option>
                              <option value="i40" class="현대">i40</option>
                              <option value="베뉴" class="현대">베뉴</option>
                              <option value="코나" class="현대">코나</option>
                              <option value="투싼" class="현대">투싼</option>
                              <option value="싼타페" class="현대">싼타페</option>
                              <option value="펠리세이드" class="현대">펠리세이드</option>
                              <option value="스타렉스" class="현대">스타렉스</option>
                              <option value="g70" class="제네시스">G70</option>
                              <option value="g80" class="제네시스">G80</option>
                              <option value="g90" class="제네시스">G90</option>
                              <option value="gv60" class="제네시스">GV60</option>
                              <option value="gv70" class="제네시스">GV70</option>
                              <option value="gv80" class="제네시스">GV80</option>
                              <option value="모닝" class="기아">모닝</option>
                              <option value="레이" class="기아">레이</option>
                              <option value="k3" class="기아">K3</option>
                              <option value="k5" class="기아">K5</option>
                              <option value="k7" class="기아">K7</option>
                              <option value="k9" class="기아">K9</option>
                              <option value="셀토스" class="기아">셀토스</option>
                              <option value="스포티지" class="기아">스포티지</option>
                              <option value="쏘렌토" class="기아">쏘렌토</option>
                              <option value="카니발" class="기아">카니발</option>
                            </select>
                            <select class="select_design" id="detail" name="detail">
                              <option value="">-- 상세모델 --</option>
                              <option value="아반떼 N" class="아반떼">아반떼 N</option>
                              <option value="아반떼 CN7" class="아반떼">아반떼 CN7</option>
                              <option value="더 뉴 아반떼 AD" class="아반떼">더 뉴 아반떼 AD</option>
                              <option value="아반떼 AD" class="아반떼">아반떼 AD</option>
                              <option value="더 뉴 아반떼" class="아반떼">더 뉴 아반떼</option>
                              <option value="아반떼 MD" class="아반떼">아반떼 MD</option>
                              <option value="아반떼 햐이브리드" class="아반떼">아반떼 햐이브리드</option>

                              <option value="쏘나타 DN8 하이브리드" class="쏘나타">쏘나타 DN8 하이브리드</option>
                              <option value="쏘나타 DN8" class="쏘나타">쏘나타 DN8</option>
                              <option value="쏘나타 뉴 라이즈 하이브리드" class="쏘나타">쏘나타 뉴 라이즈 하이브리드</option>
                              <option value="쏘나타 뉴 라이즈" class="쏘나타">쏘나타 뉴 라이즈</option>
                              <option value="LF 쏘나타 하이브리드" class="쏘나타">LF 쏘나타 하이브리드</option>
                              <option value="LF 쏘나타" class="쏘나타">LF 쏘나타</option>
                              <option value="쏘나타 더 브릴리언트" class="쏘나타">쏘나타 더 브릴리언트</option>
                              <option value="쏘나타 하이브리드" class="쏘나타">쏘나타 하이브리드</option>
                              <option value="YF 쏘나타" class="쏘나타">YF 쏘나타</option>
                              <option value="NF 쏘나타" class="쏘나타">NF 쏘나타</option>
                              <option value="더 뉴 그랜저" class="그랜저">더 뉴 그랜저</option>
                              <option value="더 뉴 그랜저 하이브리드" class="그랜저">더 뉴 그랜저 하이브리드</option>
                              <option value="그랜저 IG 하이브리드" class="그랜저">그랜저 IG 하이브리드</option>
                              <option value="그랜저 IG" class="그랜저">그랜저 IG</option>
                              <option value="그랜저 HG 하이브리드" class="그랜저">그랜저 HG 하이브리드</option>
                              <option value="그랜저 HG" class="그랜저">그랜저 HG</option>
                              <option value="그랜저 TG" class="그랜저">그랜저 TG</option>
                              <option value="i30(PD)" class="i30">i30(PD)</option>
                              <option value="더 뉴 i30" class="i30">더 뉴 i30</option>
                              <option value="i30(신형)" class="i30">i30(신형)</option>
                              <option value="i30" class="i30">i30</option>
                              <option value="베뉴" class="베뉴">베뉴</option>
                              <option value="코나 N" class="코나">코나 N</option>
                              <option value="더 뉴 코나" class="코나">더 뉴 코나</option>
                              <option value="더 뉴 코나 하이브리드" class="코나">더 뉴 코나 하이브리드</option>
                              <option value="코나 하이브리드" class="코나">코나 하이브리드</option>
                              <option value="코나 일렉트릭" class="코나">코나 일렉트릭</option>
                              <option value="코나" class="코나">코나</option>
                              <option value="투싼 NX4" class="투싼">투싼 NX4</option>
                              <option value="투싼 NX4 하이브리드" class="투싼">투싼 NX4 하이브리드</option>
                              <option value="올 뉴 투싼 TL" class="투싼">올 뉴 투싼 TL</option>
                              <option value="뉴 투싼 ix" class="투싼">뉴 투싼 ix</option>
                              <option value="투싼 ix" class="투싼">투싼 ix</option>
                              <option value="투싼" class="투싼">투싼</option>
                              <option value="더 뉴 싼타페 하이브리드" class="싼타페">더 뉴 싼타페 하이브리드</option>
                              <option value="더 뉴 싼타페" class="싼타페">더 뉴 싼타페</option>
                              <option value="싼타페 TM" class="싼타페">싼타페 TM</option>
                              <option value="싼타페 더 프라임" class="싼타페">싼타페 더 프라임</option>
                              <option value="싼타페 DM" class="싼타페">싼타페 DM</option>
                              <option value="펠리세이드" class="펠리세이드">펠리세이드</option>
                              <option value="더 뉴 그랜드 스타렉스" class="스타렉스">더 뉴 그랜드 스타렉스</option>
                              <option value="그랜드 스타렉스" class="스타렉스">그랜드 스타렉스</option>
                              <option value="더 뉴 G70" class="g70">더 뉴 G70</option>
                              <option value="G70" class="g80">G70</option>
                              <option value="G80E(RG3)" class="g80">G80E(RG3)</option>
                              <option value="G80(RG3)" class="g80">G80(RG3)</option>
                              <option value="G80" class="g90">G80</option>
                              <option value="G90(RS4)" class="g90">G90(RS4)</option>
                              <option value="G90" class="g90">G90</option>
                              <option value="GV60" class="gv60">GV60</option>
                              <option value="eGV70" class="gv70">eGV70</option>
                              <option value="GV70" class="gv70">GV70</option>
                              <option value="GV80" class="gv80">GV80</option>
                              <option value="GV90" class="gv90">GV90</option>                              
                              <option value="더 뉴 K3" class="k3">더 뉴 K3</option>
                              <option value="더 뉴 K3(2세대)" class="k3">더 뉴 K3(2세대)</option>
                              <option value="더 뉴 K3 GT(2세대)" class="k3">더 뉴 K3 GT(2세대)</option>
                              <option value="올 뉴 K3" class="k3">올 뉴 K3</option>
                              <option value="K3 GT" class="k3">K3 GT</option>
                              <option value="더 뉴 K3" class="k3">더 뉴 K3</option>
                              <option value="K3" class="k3">K3</option>
                            </select>   
                          <input class="search_button_design" type="submit" value="검색">
                      </form>
                  </div>
              <div id="tab-2" class="choice_list">
                  <form class="choice_list_design" action="CarsEasySearch2.jsp" method="post" name="car_choice">
                      <select class="select_design" name="manufac">
                          <option value="현대" selected>현대</option>
                          <option value="제네시스">제네시스</option>
                          <option value="기아">기아</option>
                          <option value="쉐보레">쉐보레(GM대우)</option>
                          <option value="르노">르노코리아(삼성)</option>
                          <option value="쌍용">쌍용</option>
                      </select>
                      <select class="select_design"name="low_price">
                          <option value="" disabled selected>최저가격</option>
                          <option value="0">0</option>
                          <option value="100">100</option>
                          <option value="200">200</option>
                          <option value="300">300</option>
                          <option value="400">400</option>
                          <option value="500">500</option>
                          <option value="600">600</option>
                          <option value="700">700</option>
                          <option value="800">800</option>
                          <option value="900">900</option>
                          <option value="1000">1,000</option>
                          <option value="1100">1,100</option>
                          <option value="1200">1,200</option>
                          <option value="1300">1,300</option>
                          <option value="1400">1,400</option>
                          <option value="1500">1,500</option>
                          <option value="1600">1,600</option>
                          <option value="1700">1,700</option>
                          <option value="1800">1,800</option>
                          <option value="1900">1,900</option>
                          <option value="2000">2,000</option>
                          <option value="2100">2,100</option>
                          <option value="2200">2,200</option>
                          <option value="2300">2,300</option>
                          <option value="2400">2,400</option>
                          <option value="2500">2,500</option>
                          <option value="2600">2,600</option>
                          <option value="2700">2,700</option>
                          <option value="2800">2,800</option>
                          <option value="2900">2,900</option>
                          <option value="3000">3,000</option>
                          <option value="3100">3,100</option>
                          <option value="3200">3,200</option>
                          <option value="3300">3,300</option>
                          <option value="3400">3,400</option>
                          <option value="3500">3,500</option>
                          <option value="3600">3,600</option>
                          <option value="3700">3,700</option>
                          <option value="3800">3,800</option>
                          <option value="3900">3,900</option>
                          <option value="4000">4,000</option>
                          <option value="4100">4,100</option>
                          <option value="4200">4,200</option>
                          <option value="4300">4,300</option>
                          <option value="4400">4,400</option>
                          <option value="4500">4,500</option>
                          <option value="4600">4,600</option>
                          <option value="4700">4,700</option>
                          <option value="4800">4,800</option>
                          <option value="4900">4,900</option>
                          <option value="5000">5,000</option>
                          <option value="6000">6,000</option>
                          <option value="7000">7,000</option>
                          <option value="8000">8,000</option>
                          <option value="9000">9,000</option>
                          <option value="10000">10,000</option>
                      </select>
                      <select class="select_design" name="high_price">
                          <option value="" disabled selected>최고가격</option>
                          <option value="0">0</option>
                          <option value="100">100</option>
                          <option value="200">200</option>
                          <option value="300">300</option>
                          <option value="400">400</option>
                          <option value="500">500</option>
                          <option value="600">600</option>
                          <option value="700">700</option>
                          <option value="800">800</option>
                          <option value="900">900</option>
                          <option value="1000">1,000</option>
                          <option value="1100">1,100</option>
                          <option value="1200">1,200</option>
                          <option value="1300">1,300</option>
                          <option value="1400">1,400</option>
                          <option value="1500">1,500</option>
                          <option value="1600">1,600</option>
                          <option value="1700">1,700</option>
                          <option value="1800">1,800</option>
                          <option value="1900">1,900</option>
                          <option value="2000">2,000</option>
                          <option value="2100">2,100</option>
                          <option value="2200">2,200</option>
                          <option value="2300">2,300</option>
                          <option value="2400">2,400</option>
                          <option value="2500">2,500</option>
                          <option value="2600">2,600</option>
                          <option value="2700">2,700</option>
                          <option value="2800">2,800</option>
                          <option value="2900">2,900</option>
                          <option value="3000">3,000</option>
                          <option value="3100">3,100</option>
                          <option value="3200">3,200</option>
                          <option value="3300">3,300</option>
                          <option value="3400">3,400</option>
                          <option value="3500">3,500</option>
                          <option value="3600">3,600</option>
                          <option value="3700">3,700</option>
                          <option value="3800">3,800</option>
                          <option value="3900">3,900</option>
                          <option value="4000">4,000</option>
                          <option value="4100">4,100</option>
                          <option value="4200">4,200</option>
                          <option value="4300">4,300</option>
                          <option value="4400">4,400</option>
                          <option value="4500">4,500</option>
                          <option value="4600">4,600</option>
                          <option value="4700">4,700</option>
                          <option value="4800">4,800</option>
                          <option value="4900">4,900</option>
                          <option value="5000">5,000</option>
                          <option value="6000">6,000</option>
                          <option value="7000">7,000</option>
                          <option value="8000">8,000</option>
                          <option value="9000">9,000</option>
                          <option value="10000">10,000</option>
                      </select>
                      <input class="search_button_design" type="submit" value="검색">
                  </form>
              </div>
              <div id="tab-3" class="choice_list">
                  <form class="choice_list_design" action="CarsEasySearch3.jsp" method="post" name="car_choice">
                      <select class="select_design" name="car_kind">
                          <option value="" disabled selected>차종선택</option>
                          <option value="차종선택"></option>
                          <option value="경차">경차</option>
                          <option value="소형">소형</option>
                          <option value="준중형">준중형</option>
                          <option value="중형">중형</option>
                          <option value="준대형">준대형</option>
                          <option value="대형">대형</option>
                          <option value="SUV">SUV</option>
                          <option value="RV">RV</option>
                          <option value="화물/버스">화물/버스</option>
                      </select>
                      <select class="select_design"name="low_year">
                          <option value="" disabled selected>최소연식</option>
                          <option value="2000">2000</option>
                          <option value="2001">2001</option>
                          <option value="2002">2002</option>
                          <option value="2003">2003</option>
                          <option value="2004">2004</option>
                          <option value="2005">2005</option>
                          <option value="2006">2006</option>
                          <option value="2007">2007</option>
                          <option value="2008">2008</option>
                          <option value="2009">2009</option>
                          <option value="2010">2010</option>
                          <option value="2011">2011</option>
                          <option value="2012">2012</option>
                          <option value="2013">2013</option>
                          <option value="2014">2014</option>
                          <option value="2015">2015</option>
                          <option value="2016">2016</option>
                          <option value="2017">2017</option>
                          <option value="2018">2018</option>
                          <option value="2019">2019</option>
                          <option value="2020">2020</option>
                          <option value="2021">2021</option>
                          <option value="2022">2022</option>
                      </select>
                      <select class="select_design"name="high_year">
                          <option value="" disabled selected>최대연식</option>
                          <option value="2000">2000</option>
                          <option value="2001">2001</option>
                          <option value="2002">2002</option>
                          <option value="2003">2003</option>
                          <option value="2004">2004</option>
                          <option value="2005">2005</option>
                          <option value="2006">2006</option>
                          <option value="2007">2007</option>
                          <option value="2008">2008</option>
                          <option value="2009">2009</option>
                          <option value="2010">2010</option>
                          <option value="2011">2011</option>
                          <option value="2012">2012</option>
                          <option value="2013">2013</option>
                          <option value="2014">2014</option>
                          <option value="2015">2015</option>
                          <option value="2016">2016</option>
                          <option value="2017">2017</option>
                          <option value="2018">2018</option>
                          <option value="2019">2019</option>
                          <option value="2020">2020</option>
                          <option value="2021">2021</option>
                          <option value="2022">2022</option>
                      </select>
                      <input class="search_button_design" type="submit" value="검색">
                  </form>
              </div>
          </div>
      </div>
        <div class="section4">
            <p class="recommand_text">이번 달에 강추하는 추천차량</p>
            <div class="month_recommand_list">
                <div class="car_list1">
                    <div class="car_img1">
                        <a href="https://www.kcar.com/bc/detail/carInfoDtl?i_sCarCd=EC60715003"><img class="car_img_size_1" src="k3_3659.png"></a>
                    </div>
                    <div class="car_summary_1">
                        <p style="font-size:16px;">기아 K3 트렌디</p>
                        <p style="font-weight:700;font-size:22px;">860만원</p>
                        <p>14년 9월식(15년형) | 89,219Km | 가솔린</p>
                    </div>
                </div>
                <div class="car_list2">
                    <div class="car_img2">
                        <a href="https://www.kcar.com/bc/detail/carInfoDtl?i_sCarCd=EC60680364"><img class="car_img_size_2" src="sportage_3345.png"></a>
                    </div>
                    <div class="car_summary_2">
                        <p style="font-size:16px;">기아 스포티지 4세대
                            디젤 2.0 2WD 노블레스 플러스</p>
                        <p style="font-weight:700;font-size:22px;">1,900만원</p>
                        <p>18년 1월식 | 33,542Km | 디젤</p>
                    </div>
                </div>
                <div class="car_list3">
                    <div class="car_img3">
                        <a href="https://www.kcar.com/bc/detail/carInfoDtl?i_sCarCd=EC60703838"><img class="car_img_size_3" src="avante_1992.png"></a>
                    </div>
                    <div class="car_summary_3">
                        <p style="font-size:16px;">현대 아반떼 AD
                            1.6 GDI 모던</p>
                        <p style="font-weight:700;font-size:22px;">1,130만원</p>
                        <p>16년 2월식 | 105,500Km | 디젤</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer">
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <p>v.Beta.0.0.1 | Sosa_Motors_Company | TEL. 1577-7484</p>
            <p>대표자 : 윤수오 | 사업장 : 경기도 부천시 소사로 56</p>
            <p>Copyright(c)(주)소사모터스 ALL Rights Reserved</p>
        </div>
            <script src="car_choice_menu.js"></script>
            <script src="car_choice_list.js"></script>
        </body>
</html>