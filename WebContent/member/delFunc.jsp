<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="dao" class="members.MemberDAO"/>

<%
dao.delMem((String)session.getAttribute("id"));
%>

<script type="text/javascript">
alert("삭제가 완료되었습니다.")
location.href="login.jsp"
</script>



</body>
</html>