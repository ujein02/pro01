<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String uid = (String) session.getAttribute("id");%>
<%@ include file="connectionPool.conf" %>
<%	
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	int no = Integer.parseInt(request.getParameter("no"));
	String title = "";
	String content = "";
	String name = "";
	String resdate = "";
	String author = "";
		
	
	sql = "select a.no no, a.title title, a.content content, ";
	sql = sql + "b.name name, a.resdate resdate, a.author aut ";
	sql = sql + "from board1 a inner join member1 b ";
	sql = sql + "on a.author=b.id where a.no=?";
	pstmt = con.prepareStatement(sql);
	pstmt.setInt(1, no);
	rs = pstmt.executeQuery();
	
	if(rs.next()){
		title = rs.getString("title");
		content = rs.getString("content");
		name = rs.getString("name");
		resdate = rs.getString("resdate");
		author = rs.getString("aut");
	}

 %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="head.jsp" %>

<title>글 상세 보기</title>
</head>
<body>
<header class="hd">


</header>
<div class="page">
	<table class="tb">
		<tbody>             
			<tr>
				<th>글 번호</th>
				<td><%=rs.getString("no") %></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><%=rs.getString("title") %></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><%=rs.getString("content") %></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><%=rs.getString("name") %></td>
			</tr>
			<tr>
				<th>작성일</th>
				<td><%=rs.getString("resdate") %></td>
			</tr>
		</tbody> 
	</table>
	<div class="btn_group">
	<a href="boardList.jsp" class="btn_primary">게시판 목록</a>
	<% if(uid.equals("admin") || uid.equals(author)){ %>
	<a href='boardModify.jsp?no=<%=no %>' class="btn primary">글 수정</a>
	<a href='boardDel.jsp?no=<%=no %>' class="btn primary">글 삭제</a>
	<%} %>
	
	</div>
</div>
<footer class="ft">
<%@ include file="footer.jsp" %>
</footer>
<%@ include file="connectionClose.conf" %>
</body>
</html>