<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<form action="registerProc.jsp">
	<label for = "id"> 아이디 : </label>
	<input type ="text" name="id"><br>
	<label for = "pwd"> 비밀번호 : </label>
 	<input type ="password" name="pwd"><br>
 	<label for = "name">이름 : </label>
 	<input type = "text" name="name">
 	<label for = "age"> 나이 : </label>
 	<input type = "text" name="age"><br>
 	<label for = "addr"> 주소 : </label>
 	<input type = "text" name="addr"><br>
 	<label for = "gender"> 성별 : </label>
 	<input type="radio" name="gender" id="gender" value="m">남자
 	<input type="radio" name="gender" id="gender" value="f">여자<br> <!-- char1이라서 밸류에 m이나 f로 한거 -->
 	
 	<input type ="submit" value="가입">
	

</form>

</body>
</html>