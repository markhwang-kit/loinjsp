<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 세션 체크
	String name = (String)session.getAttribute("name");
	System.out.println(name);
	// 만약에 세션값이 있으면
	if (name == null) {
		response.sendRedirect("login.jsp");		
	}
	// 페이지 보여주고 아니면 페이지 이동
%>
<!DOCTYPE html>
<html>
<body>

<h2>날씨 검색</h2>

<form action="searchok.jsp">
  <label for="id">검색어:</label><br>
  <input type="text" id="id" name="search" value=""><br><br>
  <input type="submit" value="검색">
</form> 


</body>
</html>
