<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@font-face {
	font-family: 'InterparkGothic';
	/*font 이름*/
	font-style: 'normal';
	src: url('InterparkGothicLight.ttf');
	/* IE9 Compat Modes */
}

@font-face {
	font-family: 'InterparkGothicBold';
	/*font 이름*/
	font-style: 'normal';
	src: url('InterparkGothicBold.ttf');
	/* IE9 Compat Modes */
}

* {
	margin: 0px;
	margin: 10px;
	padding: 0px;
	text-decoration: none;
	font-family: sans-serif;
	padding: 0px;
	font-family: 'InterparkGothicBold';
}

.main {
	margin-top: 50px;
	display: flex;
	justify-content: center;
	flex-direction: column;
	border-radius: 5px;
}

.selectForm {
	margin: 20px;
	padding: 20px;
	width: 50%;
}

.textForm {
	border-bottom: 1.5px solid #adadad;
	width: 15%;
}

.name {
	width: 100%;
	border: none;
	outline: none;
	color: #636e72;
	font-size: 16px;
	height: 25px;
	background: none;
	font-family: 'InterparkGothicBold';
}

.id {
	width: 100%;
	border: none;
	outline: none;
	color: #636e72;
	font-size: 16px;
	height: 25px;
	background: none;
	font-family: 'InterparkGothicBold';
}

.pw {
	width: 100%;
	border: none;
	outline: none;
	color: #636e72;
	font-size: 16px;
	height: 25px;
	background: none;
	font-family: 'InterparkGothicBold';
}

.btn {
	position: relative;
	margin-top: 40px;
	margin-bottom: 40px;
	width: 10%;
	height: 40px;
	background: skyblue;
	color: white;
	font-weight: bold;
	border: none;
	cursor: pointer;
	transition: 0.4s;
	display: inline;
	border-color: transparent;
	font-size: 18px;
	border-radius: 3px;
	font-family: 'InterparkGothicBold';
	margin-left: 2%;
}

.btn:hover {
	background-position: right;
}

.signup_text {
	font-family: 'InterparkGothicBold';
	padding-bottom: 50px;
	padding-left: 4%;
}
</style>
</head>
<body>
	<form action="addCarAction.jsp" method="post"
		enctype="multipart/form-data" class="main">
		<div>
			<h2 class="signup_text">차량 추가</h2>
		</div>
		<p>1. 차량번호 입력</p>
		<div class="textForm">
			<input class="name" type="text" name="car_num"
				placeholder="123가 1234">
		</div>
		<br>
		<div>
			<p>2. 제조사 입력</p>
			<select name="manufac">
				<option>현대</option>
				<option>기아</option>
				<option>제네시스</option>
				<option>쉐보레</option>
				<option>삼성</option>
				<option>쌍용</option>
			</select>
		</div>
		<br>

		<p>3. 차량 모델 입력</p>
		<div class="textForm">
			<input class="name" type="text" name="car_model" placeholder="예) 아반떼">
		</div>
		<br>

		<p>4. 상세 모델 입력</p>
		<div class="textForm">
			<input class="name" type="text" name="car_detail_model"
				placeholder="예) 아반떼 AD 1.6">
		</div>
		<br>

		<p>5. 차량 연식 입력</p>
		<div class="textForm">
			<input class="name" type="text" name="car_year" placeholder="년식">
		</div>
		<br>

		<p>6. 주행 거리 입력</p>
		<div class="textForm">
			<input class="name" type="text" name="car_distance" placeholder="Km">
		</div>
		<br>

		<p>7. 사고 여부 입력</p>
		<div>
			<input type="radio" name="accident_check" value="무사고"
				checked="checked">무사고 <input type="radio"
				name="accident_check" value="사고">사고
		</div>
		<br>
		<p>8. 차종 입력</p>
		<div>
			<input type="radio" name="car_kind" checked="checked" value="경차">경차
			<input type="radio" name="car_kind" value="소형">소형 <input
				type="radio" name="car_kind" value="준중형">준중형 <br> <input
				type="radio" name="car_kind" value="중형">중형 <input
				type="radio" name="car_kind" value="준대형">준대형 <input
				type="radio" name="car_kind" value="대형">대형 <br> <input
				type="radio" name="car_kind" value="SUV">SUV <input
				type="radio" name="car_kind" value="RV">RV <input
				type="radio" name="car_kind" value="화물/버스">화물/버스
		</div>
		<div>
			<p>9. 연료 입력</p>
			<input type="radio" name="fuel" value="휘발유">휘발유 <input
				type="radio" name="fuel" value="경유">경유 <input type="radio"
				name="fuel" value="LPG">LPG
		</div>
		<br>
		<p>10. 가격 입력</p>
		<div class="textForm">
			<input class="name" type="text" name="price" placeholder="만원">
		</div>
		<br>

		<p>11. 판매자 ID 입력</p>
		<div class="textForm">
			<input class="name" type="text" name="dealer_id" placeholder = "ID 입력">
		</div>
		<br>

		<p>12. 판매자 전화번호 입력</p>
		<div class="textForm">
			<input class="name" type="text" name="dealer_phone" placeholder = "010-0000-0000">
		</div>
		<br>

		<p>12. 차량 사진 등록</p>
		<div class="textForm">
			사진 등록<input class="name" type="file" name="PIC1"><br>
		</div>
		<br>
		<div>
			<input class="btn" type="submit" value="등록">
		</div>
	</form>
</body>
</html>