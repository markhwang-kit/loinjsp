<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>

<h2>회원가입</h2>

<form action="joinok.jsp">
  <label for="id">아이디:</label><br>
  <input type="text" id="id" name="id" value=""><br>
      <label for="pw">패스워드:</label><br>
  <input type="password" id="pw" name="pw" value=""><br>
  <label for="email">이메일:</label><br>
  <input type="email" id="email" name="email" value=""><br>

    <label for="name">이름:</label><br>
  <input type="text" id="name" name="name" value=""><br>
      <label for="tel">전화번호:</label><br>
  <input type="text" id="tel" name="tel" value=""><br><br>
  <input type="submit" value="가입">
</form> 


</body>
</html>
