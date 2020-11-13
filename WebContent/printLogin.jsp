<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>printLogin.jsp<br>
	<jsp:useBean id="mem" class="members.MemberDTO" />
	<jsp:setProperty property="*" name="mem"/>
	id : <%=mem.getId() %><br>
	pwd : <%=mem.getPwd() %><br>
	name : <%=mem.getName() %><br>
	addr : <%=mem.getAddr() %><br>
	tel : <%=mem.getTel() %><br>

</body>
</html>