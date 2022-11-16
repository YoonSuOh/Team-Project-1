<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>차량 등록</title>
</head>
<body>
	<form action="car_register_action.jsp" method="post" enctype="multipart/form-data">
		<p>1. 차량번호 입력</p>
		<input type="text" name="CAR_NUM" value="예) 123가 1234">
		<br>
		<p>2. 제조사 입력</p>
		<select name="MANUFAC">
			<option>현대</option>
			<option>기아</option>
			<option>제네시스</option>
			<option>쉐보레</option>
			<option>삼성</option>
			<option>쌍용</option>
		</select>
		<br>
		<p>3. 차량 모델 입력</p>
		<input type="text" name="CAR_MODEL" value="예) 아반떼">
		<br>
		<p>4. 상세 모델 입력</p>
		<input type="text" name="CAR_DETAIL_MODEL" value="예) 아반떼 AD 1.6">
		<br>
		<p>5. 차량 연식 입력</p>
		<input type="text" name="CAR_YEAR">년식
		<br>
		<p>6. 주행 거리 입력</p>
		<input type="text" name="CAR_DISTANCE">Km
		<br>
		<p>7. 사고 여부 입력</p>
		<input type="radio" name="ACCIDENT_CHECK" value="무사고" checked="checked">무사고
		<input type="radio" name="ACCIDENT_CHECK" value="사고">사고
		<br>
		<p>8. 차종 입력</p>
		<input type="radio" name="CAR_KIND" checked="checked" value="경차">경차
		<input type="radio" name="CAR_KIND" value="소형">소형
		<input type="radio" name="CAR_KIND" value="준중형">준중형
		<br>
		<input type="radio" name="CAR_KIND" value="중형">중형
		<input type="radio" name="CAR_KIND" value="준대형">준대형
		<input type="radio" name="CAR_KIND" value="대형">대형
		<br>
		<input type="radio" name="CAR_KIND" value="SUV">SUV
		<input type="radio" name="CAR_KIND" value="RV">RV
		<input type="radio" name="CAR_KIND" value="화물/버스">화물/버스
		<p>9. 연료 입력</p>
		<input type="radio" name="FUEL" value="휘발유">휘발유
		<input type="radio" name="FUEL" value="경유">경유
		<input type="radio" name="FUEL" value="LPG">LPG
		<br>
		<p>10. 가격 입력</p>
		<input type="text" name="PRICE">만원
		<br>
		<p>11. 판매자 ID 입력</p>
		<input type="text" name="DEALER_ID">
		<br>
		<p>12. 차량 사진 등록</p>
		<p>등록 순서 : 전면부 -> 측전면부 -> 후면부 -> 측후면부 -> 측면부 -> 클러스터 -> 핸들 -> 핸들 좌/우측 레버 -> 시동부 -> 기어레버 -> 네비게이션 -> 블랙박스 -> 운전석 -> 트렁크 내부 -> 엔진룸 -> 차량 하부</p>
		사진 등록(차량 전면부)<input type="file" name="PIC1"><br>
		사진 등록(차량 측전면부)<input type="file" name="PIC2"><br>
		사진 등록(차량 후면부)<input type="file" name="PIC3"><br>
		사진 등록(차량 측후면부)<input type="file" name="PIC4"><br>
		사진 등록(차량 측면부)<input type="file" name="PIC5"><br>
		사진 등록(클러스터)<input type="file" name="PIC6"><br>
		사진 등록(핸들 좌측)<input type="file" name="PIC7"><br>
		사진 등록(핸들 전체)<input type="file" name="PIC8"><br>
		사진 등록(핸들 우측)<input type="file" name="PIC9"><br>
		사진 등록(핸들 좌측 레버)<input type="file" name="PIC10"><br>
		사진 등록(시동부)<input type="file" name="PIC11"><br>
		사진 등록(기어 레버)<input type="file" name="PIC12"><br>
		사진 등록(네비게이션(지도))<input type="file" name="PIC13"><br>
		사진 등록(네비게이션(후방카메라))<input type="file" name="PIC14"><br>
		사진 등록(네비게이션(메뉴))<input type="file" name="PIC15"><br>
		사진 등록(블랙박스)<input type="file" name="PIC16"><br>
		사진 등록(운전석 전면부)<input type="file" name="PIC17"><br>
		사진 등록(트렁크 내부)<input type="file" name="PIC18"><br>
		사진 등록(엔진)<input type="file" name="PIC19"><br>
		사진 등록(차량 하부)<input type="file" name="PIC20">
		<br>
		<input type="submit" value="등록">
	</form>
</body>
</html>