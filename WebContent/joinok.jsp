<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String email = request.getParameter("email");
	String name = request.getParameter("name");
	String tel = request.getParameter("tel");
	
	System.out.println(id);
	System.out.println(pw);
	System.out.println(email);
	System.out.println(name);
	System.out.println(tel);
	System.out.println();
	

Connection conn = null;
PreparedStatement pstmt = null;

try {
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection("jdbc:mysql://localhost/dbdb", "root", "1234");
	System.out.println("연결 성공");
	
	String sql = "INSERT INTO member (id, email, pw, name, tel) VALUES(?, ?, ?, ?, ?)";
	pstmt = conn.prepareStatement(sql);
	// 4. 데이터 binding
	pstmt.setString(1, id);
	pstmt.setString(2, email);
	pstmt.setString(3, pw);
	pstmt.setString(4, name);
	pstmt.setString(5, tel);
	
	int count = pstmt.executeUpdate();
	if (count == 0) {
		System.out.println("데이터 입력 실패");
	} else {
		System.out.println("데이터 입력 성공");
	}

} catch (Exception e) {
	System.out.println("에러: " + e);
} finally {
	try {
		if (conn != null && !conn.isClosed()) {
			conn.close();
		}
		if( pstmt != null && !pstmt.isClosed()){
            pstmt.close();
        }
	} catch (SQLException e) {
		e.printStackTrace();
	}
}

	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
회원가입을 클릭 하면 들어온다
<%=name %>님!! 가입을 축하합니다.
</body>
</html>