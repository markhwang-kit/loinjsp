<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="naver.*" %>
<%
	String search = request.getParameter("search");
	

	System.out.println(search);
	
	ArrayList<String> list =  NvSearchApi.search(search + " 날씨");


	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> 날씨 정보</h1>
<% 
for (int i=0; i<list.size(); i++) {
	out.println(list.get(i) + "<br>");
}

for (String tit : list) {
 	out.println(tit + "<br>");
}

%>
	


</body>
</html>