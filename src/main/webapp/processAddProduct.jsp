<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@page import="dto.Product" %>
<%@page import="dao.ProductRepository" %>
<%@page import="java.sql.*" %>
<%@include file="dbconn.jsp" %>

<% 
	request.setCharacterEncoding("UTF-8");
	
	String filename = "";
	String realFolder = "c:\\Users\\user\\eclipse-workspace\\Web_Market\\src\\main\\webapp\\WEB-INF\\classes\\resources\\image";
	int maxSize = 5 * 1024 * 1024;
	String encType ="utf-8";
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
	
	String productId = multi.getParameter("productId");
	String name = multi.getParameter("name");
	String unitPrice = multi.getParameter("unitPrice");
	String description = multi.getParameter("description");
	String manufacturer = multi.getParameter("manufacturer");
	String category = multi.getParameter("category");
	String unitsInStock = multi.getParameter("unitsInStock");
	String condition = multi.getParameter("condition");
	
	Integer price;
	
	if(unitPrice.isEmpty())
		price =0;
	else
		price = Integer.valueOf(unitPrice);
	
	long stock;
	
	if(unitsInStock.isEmpty())
		stock=0;
	else
		stock = Long.valueOf(unitsInStock);
	
	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	PreparedStatement pstmt = null;
	String sql = "insert into product values(?,?,?,?,?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,productId);
	pstmt.setString(2,name);
	pstmt.setInt(3,price);
	pstmt.setString(4, description);
	pstmt.setString(5,manufacturer);
	pstmt.setString(6, category);
	pstmt.setLong(7, stock); //stock은 왜 long이냐
	pstmt.setString(8, condition);
	pstmt.setString(9, fileName);
	pstmt.executeUpdate();
	
 	if (pstmt != null)
 		pstmt.close();
 	if (conn != null)
		conn.close();
	
	
	response.sendRedirect("products.jsp");
	%>
