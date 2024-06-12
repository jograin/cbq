<%@page import="java.sql.PreparedStatement"%>
<%@page import="oracle08.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	request.setCharacterEncoding("UTF-8");
 		String sql="update member_tbl_02 set custname=?,phone=?,address=?,joindate=?,grade=?,city=? where custno="+Integer.parseInt(request.getParameter("custno"));
 		
 		Connection conn = DBConnect.getConnection();
 		PreparedStatement pstmt = conn.prepareStatement(sql);
 	
 		
 		pstmt.setString(1, request.getParameter("custname"));
 		pstmt.setString(2, request.getParameter("phone"));
 		pstmt.setString(3, request.getParameter("address"));
 		pstmt.setString(4, request.getParameter("joindate"));
 		pstmt.setString(5, request.getParameter("grade"));
 		pstmt.setString(6, request.getParameter("city"));
 		
 		pstmt.executeUpdate();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/style.css?ver=1.1.1">
</head>
<body>
	<jsp:forward page="mbrlist.jsp"></jsp:forward>
</body>
</html>