<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ID찾기</title>
</head>
<body>
    <form action="find_id_action.jsp" method="post">
		<div class="search-title">
			<h3>ID 찾기</h3>
		</div>
		<section class="form-search">
			<div class="find-name">
				<p>
					이름 : <input type="text" name="user_name" class="btn-name"
						placeholder="이름 입력">
			</div>
			<br>
			<div class="find-email">
				<p>
					이메일 : <input type="text" name="user_email" class="btn-email"
						placeholder="이메일 입력">
			</div>
		</section>
		<div class="btnSearch">
			<input type="button" name="enter" value="찾기" onClick="id_search()">
			<input type="button" name="cancle" value="취소"
				onClick="history.back()">
		</div>

	</form>
    
</body>
</html>