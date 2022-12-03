<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
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

        .logo {
            display: block;
            text-align: center;
            width: 10%;
        }

        * {
            margin: 0px;
            padding: 0px;
            text-decoration: none;
            font-family: sans-serif;
        }

        .main {
            margin-top: 50px;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            align-content: center;
            border-radius: 5px;
            
        }

        .selectForm {
            margin: 20px;
            padding: 20px;
            width: 50%;
        }

        .textForm {
            border-bottom: 1.5px solid #adadad;
            margin: 10px;
            padding: 20px 10px;
            width: 90%;
        }

        .name {
            width: 100%;
            border: none;
            outline: none;
            color: #636e72;
            font-size: 16px;
            height: 25px;
            background: none;
            font-family:'InterparkGothicBold';
        }

        .id {
            width: 100%;
            border: none;
            outline: none;
            color: #636e72;
            font-size: 16px;
            height: 25px;
            background: none;
            font-family:'InterparkGothicBold';
        }

        .pw {
            width: 100%;
            border: none;
            outline: none;
            color: #636e72;
            font-size: 16px;
            height: 25px;
            background: none;
            font-family:'InterparkGothicBold';
        }

        .btn {
            position: relative;
            margin-top: 40px;
            margin-bottom: 40px;
            width: 30%;
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
            font-family:'InterparkGothicBold';
            margin-left : 35%;
        }

        .btn:hover {
            background-position: right;
        }

        .signup_text{
            font-family:'InterparkGothicBold';
        }
    </style>
    <script>
    </script>
</head>

<body>
    <div class="main">
        <img src="logo.png" class="logo">
    </div>
    <div class="main">
        <div>
            <h2 class="signup_text">회원정보 입력</h2>
        </div>
        <form action="signup_action.jsp" method="post">
            <div class="textForm">
                <input name="USER_NAME" type="text" class="name" placeholder="실명 입력">
            </div>
            <div class="textForm">
                <input name="USER_NICK" type="text" class="name" placeholder="닉네임 입력">
            </div>
            <div class="textForm">
                <input name="USER_ID" type="text" class="id" placeholder="ID 입력"></input>
            </div>
            <div class="textForm">
                <input name="USER_PW" type="password" class="pw" placeholder="PW 입력">
            </div>
            <div class="textForm">
                <input name="loginpwconfirm" type="password" class="pw" placeholder="PW 확인">
            </div>
            <div class="textForm">
                <input type="radio" name="USER_PERM" value="member" checked="checked">일반회원
				<input type="radio" name="USER_PERM" value="dealer">딜러
            </div>
            <div class="textForm">
                <input name="USER_EMAIL" type="email" class="name" placeholder="이메일">
            </div>
            <div class="textForm">
                <input name="USER_PHONE" type="tel" class="name" placeholder="전화번호">
            </div>
            <input type="submit" class="btn" value="확인" />
        </form>
    </div>
</body>
</html>