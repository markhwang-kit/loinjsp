<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="naver.*" %>
<%
	String search = request.getParameter("search");
	

	System.out.println(search);
	
	ArrayList<String> list =  NvSearchApi.search(search);


	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> 날씨 정보</h1>
<% for (String tit : list) { %>
	<%=tit %> <br>
<% } %>

</body>
</html>