<%@page import="members.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
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

<jsp:useBean id="dao"  class="members.MemberDAO"/>
<%@ include file="../default/header.jsp" %>
<h1>회원 목록</h1>
<table border="1">
<tr>
<th>이름</th>
<th>주소</th>
<th>전화번호</th>
</tr>

<%
ArrayList<MemberDTO> list = dao.memberList();
for(MemberDTO m : list){
	out.print("<tr>");
	out.print("<td>" +"<a href=\"memberOneInfo.jsp?id="+m.getId()  +"\">"+ m.getName()+"</a>" + "</td>");
	out.print("<td>" + m.getAddr() + "</td>");
	out.print("<td>" + m.getTel() + "</td>");
	out.print("</tr>");
}


%>

</table>

<%@ include file="../default/footer.jsp" %>
</body>
</html>