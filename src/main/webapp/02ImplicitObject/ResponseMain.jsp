<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 - response</title>
</head>
<body>
    <h2>1. 로그인 폼</h2>
    <%
    //get방식으로 전달된 loginErr파라미터가 있는 경우에만 "로그인실패"를 출력한다.
    String loginErr = request.getParameter("loginErr");
    //첫실행시에는 아무것도 출력하지 않는다.
    if (loginErr != null) out.print("로그인 실패");
    %>
    <!-- 
    	로그인을 위해 post방식으로 폼값을 전송한다. get방식으로 전송하면 로그인
    	정보가 쿼리스트링으로 주소줄에 남기때문에 개인정보유출의 위험이 있다.
    	따라서 로그인 정보와 같이 보안이 필요한 경우 post방식을 주로 사용한다.
     -->
    <form action="./ResponseLogin.jsp" method="post">
        아이디 : <input type="text" name="user_id" /><br />
        패스워드 : <input type="text" name="user_pwd" /><br />
        <input type="submit" value="로그인" />
    </form>

    <h2>2. HTTP 응답 헤더 설정하기</h2>
    <form action="./ResponseHeader.jsp" method="get">
        날짜 형식 : <input type="text" name="add_date" value="2021-12-01 09:00" /><br />  
        숫자 형식 : <input type="text" name="add_int" value="8282" /><br />
        문자 형식 : <input type="text" name="add_str" value="홍길동" /><br />
        <input type="submit" value="응답 헤더 설정 & 출력" />
    </form>
</body>
</html>