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
function va(){
var abc = document.getElementById("ad")
	abc.style.display = "none"
}
</script>
</head>
<body onload="va()">



<script type="text/javascript">
function del(){
	
	location.href="delFunc.jsp"
}

</script>




<jsp:useBean id="dao" class="members.MemberDAO"/>
<%@ include file="../default/header.jsp" %>


<%
System.out.print(session.getAttribute("user"));
if(session.getAttribute("user") == null){%>
	<%
	System.out.print("실행");
	response.sendRedirect("login.jsp"); %>
<% }else{%>


<%ArrayList<MemberDTO> list; 




if((String)session.getAttribute("id")==null ){
	ArrayList<MemberDTO> list2 = dao.memberSearch(request.getParameter("id"));
	session.setAttribute("id", list2.get(0).getId()); 
	list = list2;
}else{
	
	if(request.getParameter("id") == null){
		ArrayList<MemberDTO> list2 = dao.memberSearch((String)session.getAttribute("id"));
		list = list2;
	}else{
	ArrayList<MemberDTO> list2 = dao.memberSearch(request.getParameter("id"));
	list = list2;
	}
%>

<% }
 %>


<h1>개인 정보</h1>
<form action="reName.jsp">
아이디 : <%=list.get(0).getId() %> <br>
비밀번호 : <%=list.get(0).getPwd() %> <br>
이름 : <%=list.get(0).getName() %> <br>
주소 : <%=list.get(0).getAddr() %> <br>
전화번호 : <%=list.get(0).getTel() %> <br>
<input type="submit" value="수정"><input type="button" value="삭제" onclick="del()">
</form>

<%} %>


<%@ include file="../default/footer.jsp" %>
</body>
</html>