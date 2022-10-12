<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>정직한 중고차:소사모터스</title>
        <style>
            /* 1920x1080 화면 해상도
            */
            @font-face {
                font-family:'InterparkGothic'; /*font 이름*/
                font-style: 'normal';
                src: url('InterparkGothicLight.ttf'); /* IE9 Compat Modes */
            }   
            @font-face {
                font-family:'InterparkGothicBold'; /*font 이름*/
                font-style: 'normal';
                src: url('InterparkGothicBold.ttf'); /* IE9 Compat Modes */
            } 
            #all_content{
                font-family:'InterparkGothicBold';
                margin:0;
                width:1920px;
                height:1080px;
            }
            .section1{
                margin:0;
                width:1920px;
                height:216px;
            }
                .main_nav{
                    width:1120px;
                    height:216px;
                    margin: 0px 400px 0px 400px;
                    display:block;
                }
                .sign{
                    margin-top:40px;
                    list-style-type:none;
                    float:right;
                }
                .sign li{
                    float:left;
                    padding-left:5px;
                }
                .sign a{
                    text-decoration:none;
                    font-size:15px;
                    color:Black;
                }

                .sign a:hover{
                    color:#87CEEB;
                }
                .logo{
                    position:absolute;
                    margin:72px 0px 0px 0px;
                }
                .logo_size{
                    width:40%;
                    height:40%;
                }
                .menu{
                    position:absolute;
                    list-style-type:none;
                    margin-left:190px;
                    margin-top:160px;
                }
                .menu li{
                    float:left;
                    padding-left:8px;
                    font-size:15pt;
                }
                .menu a{
                    float:left;
                    text-decoration:none;
                    font-size:22px;
                    color:Black;
                }

                .menu a.active,.menu a:hover{
                    color:#87CEEB;
                }
            .section2{
                margin:0;
                width:1920px;
                height:540px;
            }
                .ad{
                    width:1120px;
                    height:540px;
                    margin: 0px 400px 0px 400px;
                    display:block;
                    background-color:rgb(120, 177, 177);
                }
                .ad_size{
                    width:100%;
                    height:100%;
                }
            .section3{
                margin:0;
                width:1920px;
                height:540px;
                background-color:#F6F8FA;
            }
                .search_text{
                    margin-top:80px;
                    font-family:'InterparkGothicBold';
                    text-align:center;
                    font-size:26pt;
                    font-weight:700;
                }
                .car_search{
                    outline:none;
                    position:absolute;
                    text-align:center;
                    margin: 0px 400px 0px 400px;
                    width:1120px;
                    height:250px;
                    display:block;
                }
                input:focus{
                    outline:none;
                }
                .car_searchbar{
                    width:460px;
                    border:0;
                    background-color:#F6F8FA;
                    font-family:'InterparkGothic';
                    font-size:14pt;
                    border-bottom:3px solid #000000;
                }
                .car_search_choice{
                    position:absolute;
                    margin: 250px 400px 0px 400px;
                    width:1120px;
                    height:240px;
                    display:block;
                    background-color:#ffffff;
                    }
                .choice_nav{
                    position:absolute;
                    width:920px;
                    height:120px;
                    margin: 0px 100px 0px 100px;
                    background-color:blue;
                }
                .choice_list{
                    position:absolute;
                    width:1120px;
                    height:120px;
                    margin: 120px 300px 0px 300px;
                }
                .choice_menu{
                    position:absolute;
                    width:920px;
                    height:120px;
                 
                    margin:0px 200px 0px 200px;
                
                }
                .choice_menu_ul{
                    position:absolute;
                    list-style-type:none;
                    margin:50px 100px 0px -50px;
                }
                .choice_menu li{ 
                    float:left;
                    padding-left:15px;
                    font-size:15pt;
                }
                .choice_list_design{
                    position:absolute;
                    margin:0px 0px 0px -100px;
                    padding-left:20px;
                }
                .select_design_country{
                    margin-left:10px;
                    margin-top:1px;
                    width:80px;
                    height:50px;
                    font-family:'InterparkGothicBold';
                    border-radius:5px;
                    background-color:#F6F8FA;
                    
        
                }
                .select_design{
                    margin-left:10px;
                    margin-top:1px;
                    width:120px;
                    height:50px;
                    background-color:#F6F8FA;
                    font-family:'InterparkGothicBold';
                    border-radius:5px;
                }
                .search_button_design{
                    position:absolute;
                    margin-left:10px;
                    margin-top:1px;
                    width:120px;
                    height:50px;
                    border-radius:5px;
                    border:0;
                    font-size:15px;
                    font-family:'InterparkGothicBold';
                    color:#ffffff;
                    background-color:#87CEEB;
                }
            .section4{
                margin:0;
                width:1920px;
                height:540px; /* +180px */
            }
            .section5{
                margin:0;
                width:1920px;
                height:216px; /* -180px */
                background-color:#F6F8FA;
            }
            .footer{
                margin:0;
                width:1920px;
                height:216px; /* -180px */
                text-align:center;
            }
            .recommand_text{
                margin-left:400px;
                margin-top:80px;
                font-family:'InterparkGothicBold';
                font-size:26pt;
                font-weight:700;
            }
            .month_recommand_list{
                width:1120px;
                height:540px;
                margin: 0px 400px 0px 400px;
                display:block;
            }
            .car_list1{
                width:360px;
                height:540px;
                display:block;    
            }
                .car_img1{
                    position:absolute;
                    margin:0px 0px 0 0px;
                    width:360px;
                    height:300px;
                    display:block;
                }
                .car_img_size_1{
                    width:360px;
                    height:300px;
                    border-radius:8px;
                }
                .car_summary_1{
                    position:absolute;
                    width:453px;
                    margin-top:300px;
                    padding:0;
                }
            .car_list2{
                width:360px;
                height:540px;
                margin-top:-540px;
                margin-left:374px;
                display:block;
            }
                .car_img2{
                    position:absolute;
                    margin:0px 0px 0 0px;
                    width:360px;
                    height:300px;
                    display:block;
                }
                .car_img_size_2{
                    width:360px;
                    height:300px;
                    border-radius:8px;
                }
                .car_summary_2{
                    position:absolute;
                    margin-top:300px;
                    margin-left:0px;
                    padding:0;
                }
            .car_list3{
                width:360px;
                height:540px;
                margin-top:-540px;
                margin-left:748px;
                display:block;
            }
                .car_img3{
                    position:absolute;
                    margin:0px 0px 0 0px;
                    width:360px;
                    height:300px;
                    display:block;
             
                }
                .car_img_size_3{
                    width:360px;
                    height:300px;
                    border-radius:8px;
                }
                .car_summary_3{
                    position:absolute;
                    margin-top:300px;
                    padding:0;
                }
        </style>
    </head>
    <body id="all_content">	
    	<div class="section1">
            <div class="main_nav">
                <div>
                    <ul class="sign">
                    <% 
                    	String id = (String)session.getAttribute("id");
                    %>
                    <%if(id==null){%>
                        <li><a href="login.html">로그인</a></li>
                        <li> | </li>
                        <li><a href="signup.html">회원가입</a></li>
                    <%}else{ %>
                    	<li><strong><%=id %></strong>님</li>
                        <li> | </li>
                        <li><a href="logout.jsp">로그아웃</a></li>
                    <%} %>
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
                        <li><a href="board_report.jsp">고객센터(구현 예정)</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="section2">
            <div class="ad">
                <img class="ad_size" src="AD.png">
            </div>
        </div>
        <div class="section3">
            <div class="car_search">
                <p class="search_text">원하시는 차가 있으신가요?</p>
                <form action="car_search.jsp">
                    <input class="car_searchbar" type="search" placeholder="모델명을 입력해주세요. 예)올 뉴 K3">
                </form>
            </div>
            <div class="car_search_choice">
                <div class="choice_menu">
                    <ul class="choice_menu_ul">
                        <li>차 이름을 알고 있어요</li>
                        <li> | </li>
                        <li>가격이 싼 차를 사고 싶어요</li>
                        <li> | </li>
                        <li>차종별로 찾고 있어요</li>
                    </ul>
                </div>
                <div class="choice_list">
                    <form class="choice_list_design" action="choise_search.jsp" method="post" name="car_choice">
                        <select class="select_design_country" name="choice_search">
                            <option value="국산" selected>국산</option>
                            <option value="수입">수입</option>
                        </select>
                        <select class="select_design" name="choice_search">
                            <option value="현대" selected>현대</option>
                            <option value="제네시스">제네시스</option>
                            <option value="기아">기아</option>
                            <option value="쉐보레">쉐보레(GM대우)</option>
                            <option value="르노">르노코리아(삼성)</option>
                            <option value="쌍용">쌍용</option>
                        </select>
                        <select class="select_design"name="choice_search">
                            <option value="아반떼" selected>아반떼</option>>
                            <option value="소나타">소나타</option>
                            <option value="그랜져">그랜져</option>
                            <option value="i30">i30</option>
                            <option value="i40">i40</option>
                            <option value="베뉴">베뉴</option>
                            <option value="코나">코나</option>
                            <option value="투싼">투싼</option>
                            <option value="펠리세이드">펠리세이드</option>
                        </select>
                        <select class="select_design" name="choice_search">
                            <option value="아반떼 N" selected>아반떼 N</option>>
                            <option value="소나타">아반떼(CN7)</option>
                            <option value="그랜져">더 뉴 아반떼 AD</option>
                            <option value="i30">아반떼 AD</option>
                            <option value="i40">더 뉴 아반떼</option>
                            <option value="베뉴">아반떼 MD</option>
                            <option value="코나">아반떼 하이브리드</option>
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
        <div class="section5">
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
</html>