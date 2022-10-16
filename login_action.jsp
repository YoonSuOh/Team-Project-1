<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String id = "";
		String pw = "";
		
		int result = -1;
		
		if(request.getParameter("id")!= null && request.getParameter("pw")!= null){
			id = request.getParameter("id");
			pw = request.getParameter("pw");
		}
		
		if(id.equals("")){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('아이디를 입력하세요.');");
			script.println("location.href='login.jsp'");
			script.println("</script>");
			script.close();
		}
		
		if(pw.equals("")){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호를 입력하세요.');");
			script.println("location.href='login.jsp'");
			script.println("</script>");
			script.close();
		}
		
		if(!id.equals("")&&!pw.equals("")){
			Connection con = null; 
			PreparedStatement pstmt = null; 
			String url = "jdbc:oracle:thin:@localhost:1521:orcl";
			String user = "HR", db_pw = "1234";
			
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection(url, user, db_pw);
			String sql = ("select USER_PW from MEMBERS where USER_ID = '"+ id + "'");
			
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			
			while(rs.next()){
				if(!rs.getString(1).equals(pw))
					result = 0;
				else
					result = 1;
			}
			rs.close();
			con.close();
			
			if(result==0){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('비밀번호가 일치하지 않습니다.');");
				script.println("location.href='login.jsp'");
				script.println("</script>");
				script.close();
			}
			else if(result==-1){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('아이디가 일치하지 않습니다.');");
				script.println("location.href='login.jsp'");
				script.println("</script>");
				script.close();
			}
			else{
				PrintWriter script = response.getWriter();
				session.setAttribute("id", id);
				script.println("<script>");
				script.println("alert('로그인 성공!');");
				script.println("location.href='main.jsp'");
				script.println("</script>");
				script.close();
			}
		}
	%>
</body>
</html>