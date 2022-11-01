<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import = "java.io.*" %>
<%@ page import = "Members.MembersDAO" %>
<% request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="Members" class="Members.Members" scope="page"/>
<jsp:setProperty name="Members" property="USER_ID" />
<jsp:setProperty name="Members" property="USER_PW" />
<jsp:setProperty name="Members" property="USER_NICK" />
<jsp:setProperty name="Members" property="USER_NAME" />
<jsp:setProperty name="Members" property="USER_PERM" />
<jsp:setProperty name="Members" property="USER_EMAIL" />
<jsp:setProperty name="Members" property="USER_PHONE" />
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
	if(Members.getUSER_ID() == null || Members.getUSER_PW() == null || Members.getUSER_NICK() == null || Members.getUSER_NAME() == null || Members.getUSER_PERM() == null || Members.getUSER_EMAIL() == null || Members.getUSER_PHONE() == null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안된 사항이 있습니다!')");
		script.println("history.back()");
		script.println("</script>");
	} else{
		MembersDAO membersDAO = new MembersDAO();
		int result = membersDAO.join(Members);
		if(result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('이미 존재하는 아이디입니다!')");
			script.println("history.back()");
			script.println("</script>");
		} else {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('회원가입 성공!')");
			script.println("location.href='main.jsp'");
			script.println("</script>");
		}
	}
%>
</body>
</html>