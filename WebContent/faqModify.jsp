<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String sid = (String) session.getAttribute("id");
	int no = Integer.parseInt(request.getParameter("no"));
%>

<!DOCTYPE html>
<html>
<head>
	<%@ include file="head.jsp" %>
    <link rel="stylesheet" href="./css/reset2.css">
    <link rel="stylesheet" href="header.css">
    <style>
    /* header.css */
    .hd { position:fixed; }
    /* content */
    .vs { clear:both; width: 100%; height:300px; overflow: hidden; }
    .vs img { display:block; width: 100%; height:auto; }
    .bread { clear:both; width: 100%; line-height: 60px; border-bottom:3px solid #eee; }
    .bread_fr { width: 1200px; margin: 0 auto; }
    .page { clear:both; width: 100%; min-height:100vh;}
    .page:after { content:""; display:block; clear:both; }
    .page_wrap { width: 1200px; margin: 0 auto; }
    .page_title { padding-top: 1em; text-align: center; }
    .home { color:#333; }
    .frm1 { padding: 24px; width: 1000px; margin:50px auto; }
    .tb { display:table; margin:40px auto; width:1000px; border-collapse:collapse; }
    .tb tr { display:table-row; }
    .tb td, .tb th { display:table-cell; }
    .tb th { height: 48px; border:1px solid #333; color:#333; background-color:rgb(198, 180, 142); 
    width:200px; box-sizing:border-box; }
    .tb td { height: 48px; border-bottom:1px solid #333; text-align:left;
     border-right:2px solid #333;
    width:600px; box-sizing:border-box; padding:8px; }
    .tb tr:first-child th { border-top:2px solid #333; }
    .tb tr:first-child td { border-top:2px solid #333; }
    .tb tr:last-child th { border-bottom:2px solid #333; }
    .tb tr:last-child td { border-bottom:2px solid #333; }
	
	.btn_group .btn.primary { background-color:#333; color:#fff; min-width:120px; height: 32px; line-height: 32px; border-radius:10px; float:right; margin-top:40px; margin-right:30px; cursor:pointer; text-align:center; padding-left:10px; padding-right:10px; }
	.btn_group .btn.primary:hover { background-color:rgb(198, 180, 142); color:#fff; }
    </style>
    <link rel="stylesheet" href="footer.css">
</head>
<body>
<div class="wrap">
    <header class="hd">
		<%@ include file="nav.jsp" %>
    </header>
    <div class="content">
        <figure class="vs">
            <img src="./img/main.jpg" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <span class="sel">자주하는 질문 및 답변 수정</span>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">자주하는 질문 및 답변 수정</h2>
                <%@ include file="connectionPool.conf" %>
                <%
				sql = "select * from faqa where no=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, no);
				rs = pstmt.executeQuery();
				if(rs.next()){
			%>
  				<div class="frm1">
  					<form name="frm" action="faqModifyPro.jsp" method="post" class="frm">
	  					<table class="tb">
	  						<tbody>             
								<tr>
								<th><label for="title">제목</label></th>
								<td><input type="text" name="title" id="title" placeholder="제목 입력" class="in_data" value='<%=rs.getString("title") %>' required></td>
								</tr>
								<tr>
									<th><label for="content">내용</label></th>
									<td>
										<textarea cols="100" rows="6" name="content" id="content" class="in_data2"><%=rs.getString("content") %></textarea>
									</td>
								</tr>
								<tr>
									<th><label for="author">작성자</label></th>
									<td><%=rs.getString("author") %></td>
								</tr>
							</tbody> 
						</table>
					<%
					}
					%>
				<%@ include file="connectionClose.conf" %>
						<div class="btn_group">
							<button type="submit" class="btn primary">글 수정</button>
							<a href="faq.jsp" class="btn primary">자주하는 질문 및 답변 목록</a>
						</div>
					</form>
				</div>
			</div>
        </section>
    </div>
    <footer class="ft">
		<%@ include file="footer.jsp" %>
    </footer>
</div>
</body>
</html>