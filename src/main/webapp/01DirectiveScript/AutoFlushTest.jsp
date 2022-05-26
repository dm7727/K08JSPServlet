<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" buffer="1kb" autoFlush="true" %> <!-- 버퍼 설정 -->
<!-- 
	JSP는 화면상에 내용을 출력할때 항상 버퍼에 먼저 저장한다.
	buffer속성을 통해 버퍼 사용여부(용량)를 설정할 수 있고
	autoFlush속성을 통해 버퍼가 꽉 찬 경우 내보내기 할지를 설정한다.
	false하면 에러나고, true하면 용량만큼만 출력한다.
 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 지시어 - buffer, autoFlush 속성</title>
</head>
<body>
<%
/*
	for문을 통해 10글자(10byte)를 100번 반복해서 출력하므로 1000byte가 된다.
	여기에 html태그들이 있으므로 해당 페이지의 용량은 1kb를 초과하게 되어
	실행시 에러가 발생한다.
	해결방법은 buffer의 용량을 늘리거나, autoFlush를 true로 변경한다.
*/
for(int i =1; i<=100; i++){ //버퍼채우기
	out.println("abcde12345");
}
%>
</body>
</html>