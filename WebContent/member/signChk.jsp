<%@page import="members.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
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
if(request.getParameter("id").isEmpty() || request.getParameter("id") ==null){
%>
<script type="text/javascript">
	alert("아이디는 필수입력사항입니다")
	location.href="signUp.jsp"

</script>
<% 	
}else if(request.getParameter("pwd").isEmpty() || request.getParameter("pwd") ==null){
%>
<script type="text/javascript">
	alert("비밀번호는 필수입력사항입니다")
	location.href="signUp.jsp"

</script>
<% 	
}



%>


<% ArrayList<MemberDTO> list = dao.memberSearch(request.getParameter("id"));
if(list.isEmpty()){
	//비밀번호 비밀번호확인 일치여부만들기 Quiz(5)
	

	if(request.getParameter("pwd").equals(request.getParameter("pwdc"))){
		MemberDTO dto = new MemberDTO();
		dto.setId(request.getParameter("id"));
		dto.setPwd(request.getParameter("pwd"));
		if(request.getParameter("name") ==null || request.getParameter("name").equals("")){
			dto.setName("???");
		}else{
			dto.setName(request.getParameter("name"));
		}
		
		if(request.getParameter("addr") ==null || request.getParameter("addr").equals("")){
			dto.setAddr("???");
		}else{
			dto.setAddr(request.getParameter("addr"));
		}
		
		if(request.getParameter("tel") ==null || request.getParameter("tel").equals("")){
			dto.setTel("???");
		}else{
			dto.setTel(request.getParameter("tel"));
		}
		dao.signUp(dto);
		%>
		<script type="text/javascript">
		alert("가입완료!")
		location.href="login.jsp"
		</script>
		
		<% 
	}else{%>
	<script type="text/javascript">
	alert("비밀번호가 일치하지않습니다")
	location.href="signUp.jsp"
	</script>
	
		<% 
	}
	
	
}else{
	%>
	<script type="text/javascript">
	alert("이미 존재하는 아이디입니다.")
	location.href="signUp.jsp"
	</script>
	
	
	<%}%>



</body>
</html>