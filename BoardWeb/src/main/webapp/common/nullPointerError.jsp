<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isErrorPage="true" %>
<html>
<head>
	<title>기본 에러 화면</title>
</head>
<body bgcolor="white" text="black">
<!-- 타이틀 시작 -->
<table width="100%" border="1" cellspacing="0" cellpadding="0">
	<tr><td align="center" bgcolor="orange"><b>기본 에러 화면입니다.</b></td></tr>
</table>
<br>
<!-- 에러 메시지 -->
<table width="100%" border="1" cellspacing="0" cellpadding="0" align="center">
	<tr>
		<td align="center">
			<br><br><br><br><br>
			Message: ${exception.message}
			<br><br><br><br><br>
		</td>
	</tr>
</table>
</body>
</html>
