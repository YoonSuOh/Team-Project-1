<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="addCarAction.jsp" method="post" enctype="multipart/form-data">
		<p>1. 차량번호 입력</p>
		<input type="text" name="car_num" value="예) 123가 1234">
		<br>
		<p>2. 제조사 입력</p>
		<select name="manufac">
			<option>현대</option>
			<option>기아</option>
			<option>제네시스</option>
			<option>쉐보레</option>
			<option>삼성</option>
			<option>쌍용</option>
		</select>
		<br>
		<p>3. 차량 모델 입력</p>
		<input type="text" name="car_model" value="예) 아반떼">
		<br>
		<p>4. 상세 모델 입력</p>
		<input type="text" name="car_detail_model" value="예) 아반떼 AD 1.6">
		<br>
		<p>5. 차량 연식 입력</p>
		<input type="text" name="car_year">년식
		<br>
		<p>6. 주행 거리 입력</p>
		<input type="text" name="car_distance">Km
		<br>
		<p>7. 사고 여부 입력</p>
		<input type="radio" name="accident_check" value="무사고" checked="checked">무사고
		<input type="radio" name="accident_check" value="사고">사고
		<br>
		<p>8. 차종 입력</p>
		<input type="radio" name="car_kind" checked="checked" value="경차">경차
		<input type="radio" name="car_kind" value="소형">소형
		<input type="radio" name="car_kind" value="준중형">준중형
		<br>
		<input type="radio" name="car_kind" value="중형">중형
		<input type="radio" name="car_kind" value="준대형">준대형
		<input type="radio" name="car_kind" value="대형">대형
		<br>
		<input type="radio" name="car_kind" value="SUV">SUV
		<input type="radio" name="car_kind" value="RV">RV
		<input type="radio" name="car_kind" value="화물/버스">화물/버스
		<p>9. 연료 입력</p>
		<input type="radio" name="fuel" value="휘발유">휘발유
		<input type="radio" name="fuel" value="경유">경유
		<input type="radio" name="fuel" value="LPG">LPG
		<br>
		<p>10. 가격 입력</p>
		<input type="text" name="price">만원
		<br>
		<p>11. 판매자 ID 입력</p>
		<input type="text" name="dealer_id">
		<br>
		<p>12. 판매자 전화번호 입력</p>
		<input type="text" name="dealer_phone">
		<br>
<p>12. 차량 사진 등록</p>
		사진 등록<input type="file" name="PIC1"><br>
		<br>
		<input type="submit" value="등록">
	</form>
</body>
</html>