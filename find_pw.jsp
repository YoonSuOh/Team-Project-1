<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PW찾기</title>
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
	width: 10%;
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
	width : 80px;
	height: 20px;
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
	
}

.btn:hover {
	background-position: right;
}

.seacrch-title {
	font-family: 'InterparkGothicBold';
	padding-bottom: 50px;
	padding-left: 10px !important;
}
</style>
</head>
<body>
    <form action="find_pw_action.jsp" method="post">
		<div class="search-title">
			<h3>PW 찾기</h3>
		</div>
		<section class="form-search">
			<div class="find-ID">
				<p>
					<div class = "textForm"><input type="text" name="user_ID" class ="name"
						placeholder="ID 입력"></div>
			</div>
			<br>
			<div class="find-email">
				<p>
					<div class = "textForm"><input type="text" name="user_email" class ="name"
						placeholder="이메일 입력"></div>
			</div>
		</section>
		<div class="btnSearch">
			<input class = "btn" type="button" name="enter" value="찾기" onClick="id_search()">
			<input class = "btn" type="button" name="cancle" value="취소"
				onClick="history.back()">
		</div>

	</form>
</body>
</html>