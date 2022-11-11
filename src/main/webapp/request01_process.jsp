<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String userid = request.getParameter("id");
	String password = request.getParameter("passwd");
	%>
	<p> 아이디 : <%=userid%>
	<p> 비밀번호 : <%=password%>
</body>
</html>