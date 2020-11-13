<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

</style>
</head>
<body>
<%@ include file="../default/header.jsp" %>
<h1>로그인 페이지 입니다</h1>
<%session.invalidate(); %>
<form action="chkLogin.jsp" method="post">
<input type="text" name="id" placeholder="아이디"><br>
<input type="text" name="pwd" placeholder="비밀번호"><br>
<input type="submit" value="로그인">&nbsp;&nbsp;&nbsp; <a href="signUp.jsp">회원가입</a>
</form>
<%@ include file="../default/footer.jsp" %>

</body>
</html>