<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isErrorPage="true" %> <!-- isErrorPage 속성에 true를 지정 -->
<!-- 
	해당 페이지에서 전달된 에러(예외)를 처리하기 위해서는
	page지시어에 isErrorPage속성을 true로 지정해야 한다.
 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 지시어 - errorPage, isErrorPage 속성</title>
</head>
<body>
	<h2>서비스 중 일시적인 오류가 발생하였습니다.</h2>
	<div>
	<img src="../images/Error.jpg" alt="공사중입니다." />
	</div>
	<p>
		오류명 : <%= exception.getClass().getName() %> <br />
		오류 메시지 : <%= exception.getMessage() %>
	</p>
</body>
</html>