<%@ page import="com.springbook.biz.board.BoardVO" %>
<%@ page import="com.springbook.biz.board.Impl.BoardDAO" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<%
	// 1. 검색할 게시글 번호 추출
	String seq = request.getParameter("seq");
	
	// 2. DB 연동 처리
	BoardVO vo = new BoardVO();
	vo.setSeq(Integer.parseInt(seq));
	
	BoardDAO boardDAO = new BoardDAO();
	BoardVO board = boardDAO.getBoard(vo);
	
	// 3. 응답 화면 구성
%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<title>글 상세</title>
</head>
<body>
<center>
	<h1>글 상세</h1>
	<a href="logout_proc.jsp">Log-out</a>
	<hr>
	<form action="updateBoard_proc.jsp" method="post">
		<input name="seq" type="hidden" value="<%= board.getSeq() %>"/>
	<table border="1" cellpadding="0" cellspacing="0">
		<tr>
			<td bgcolor="orange" width="70">제목</td>
			<td align="left"><input name="title" type="text" value="<%= board.getTitle() %>"/></td>
		</tr>
		<tr>
			<td bgcolor="orange">작성자</td>
			<td align="left"><%= board.getWriter() %></td>
		</tr>
		<tr>
			<td bgcolor="orange">내용</td>
			<td align="left"><textarea name="content" cols="40" rows="10"><%= board.getContent() %></textarea></td>
		</tr>
		<tr>
			<td bgcolor="orange">등록일</td>
			<td align="left"><%= board.getRegdate() %></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="글 수정"/>
			</td>
		</tr>
	</table>
	</form>
	<hr>
	<a href="insertBoard.jsp">글등록</a>&nbsp;&nbsp;&nbsp;
	<a href="deleteBoard_proc.jsp?seq=<%= board.getSeq() %>">글삭제</a>&nbsp;&nbsp;&nbsp;
	<a href="getBoardList.jsp">글목록</a>
</center>
</body>
</html>
