<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String uid = (String)session.getAttribute("id"); %>    

 
<!DOCTYPE html>
<html>
<head>
<%@ include file="head.jsp" %>
<meta charset="UTF-8">
<title>글쓰기</title>
<style>
.frm3{display:table; width:1200; border:1px #333 solid;}
</style>
</head>
<body>
<header class="hd">
<%@ include file="nav.jsp" %>
	<h2>글쓰기</h2>
</header>
<div class="content">
	<div class="frm3">
		<form name="frm4" action="boardWritePro2.jsp" method="post" class="frm4">
			<table>
				<tr>
					<th>제목</th>
					<td><input type="text" name="" id="" class=""></td>
				</tr>
				<tr>
					<th>작성자</th>
					<td><%=uid %></td>
				</tr>
				<tr>
					<th>내용</th>
					<td>
					<textarea cols="100" rows="8" name="content" id="content"></textarea>
					</td>
				</tr>
				<div class="btn_bw">
					<button type="submit" class="btn_bwp">글쓰기 </button>
					<a href="boardList.jsp" class="btn_bwq">글목록</a>
				</div>
			</table>
		</form>
	</div>
</div>

<footer class="ft">
<%@ include file="footer.jsp" %>
</footer>

</body>
</html>