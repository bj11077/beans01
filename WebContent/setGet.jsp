<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>setGet.jsp<br>
	<jsp:useBean id="member" class="members.MemberDTO"/>
	id : <jsp:getProperty property="id" name="member"/>
	=><%= member.getId() %><br>
	pwd : <jsp:getProperty property="pwd" name="member"/><br>
	<jsp:setProperty property="id" name="member"/>
	<jsp:setProperty property="pwd" name="member"/>
	id : <jsp:getProperty property="id" name="member"/>
	=> <%=member.getId() %><br>
	pwd : <jsp:getProperty property="pwd" name="member"/>
</body>
</html>