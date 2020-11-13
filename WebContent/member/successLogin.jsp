<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

function logoutF(){
	
	<%if(session.getAttribute("user") !=null){  %>
	var abc = document.getElementById("ad")
	abc.innerHTML="로그아웃"
	abc.href="logout.jsp"
	<%}%>
}




</script>


</head>
<body onload="logoutF()">


<%
if(session.getAttribute("user") == null){%>
	<script type="text/javascript">
	location.href= "login.jsp"
	</script>
<% }%>


<%@ include file="../default/header.jsp" %>
<h1>로그인 페이지</h1>


<%@ include file="../default/footer.jsp" %>
</body>
</html>