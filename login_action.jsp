<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import = "java.io.*" %>
<%@ page import = "Members.MembersDAO" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="Members" class="Members.Members" scope="page"/>
<jsp:setProperty name="Members" property="USER_ID" />
<jsp:setProperty name="Members" property="USER_PW" />
<jsp:setProperty name="Members" property="USER_PERM" />
<!DOCTYPE>
<html>
    <head>
    	<meta charset="UTF-8">
    </head>
<body>
	<%
    	MembersDAO membersDAO = new MembersDAO();
		int result = membersDAO.login(Members.getUSER_ID(), Members.getUSER_PW(), Members.getUSER_PERM());
		
		if(result == 1){
			session.setAttribute("USER_ID", Members.getUSER_ID());
			session.setAttribute("USER_PERM", Members.getUSER_PERM());
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인 성공')");
			script.println("location.href='main.jsp'");
			script.println("</script>");
			
		} else if (result == 0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호가 틀립니다')");
			script.println("history.back()");
			script.println("</script>");
		} else if ( result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('존재하지 않는 아이디입니다')");
			script.println("history.back()");
			script.println("</script>");
		} else if (result == -2){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('DB 연결에 오류가 발생했습니다')");
			script.println("history.back()");
			script.println("</script>");
		}
     %>
</html>