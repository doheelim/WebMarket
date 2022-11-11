<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>배송 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="displqy-3">배송 정보</h1>
		</div>
	</div>
	<div class="container">
		<form action="./processShippingInfo.jsp" class="form-horizontal" method="post">
			<input type="hidden" name= "cartId" value="<%=request.getParameter("cartId")%>"/>
			<div class = "form-group row" >
				<lable class ="col-sm-2">성명</label><
				<div class="col-sm-3">
					<input name ="name" type="text" class="form-control"/>
				</div>
			</lable>
		<div class="form-group row">
			<label class="col-sm-2">국가명</label>
			<div class="col-sm-3">
				<input name = "county" type="text" class="form-control"/>
			</div>
		</div>
		<div class="form-gruop row">
			<label class="col-sm-2">우편번호</label>
			<div class="col-sm-3">
				<input name = "zipCode" type="text" class="form-control"/>
			</div>
		</div>
</body>
</html>