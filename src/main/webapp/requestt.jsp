<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<% 
		String hostValue = request.getHeader("host");
		String alvalue = request.getHeader("accept-language");
		
		out.print("호스트 명 : " + hostValue +  "<br>");
		out.print("설정된 언어 : " + alvalue +  "<br>");
		%>
</body>
</html>