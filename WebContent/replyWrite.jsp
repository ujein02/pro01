<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String sid = (String) session.getAttribute("id");
	int parno = Integer.parseInt(request.getParameter("parno"));
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
    width:150px; box-sizing:border-box; }
    .tb td { height: 48px; border:1px solid #333; text-align:left; width:600px; box-sizing:border-box; padding:8px; }
    
    
	
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
            <img src="./img/main.jpg" alt="?????????">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <span class="sel">????????????</span>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">????????????</h2>
  				<div class="frm1">
  					<form name="frm" action="replyWritePro.jsp" method="post" class="frm">
	  					<table class="tb">
	  						<tbody>             
								<tr>
								<th><label for="title">?????? ??????</label></th>
								<td><input type="text" name="title" id="title" placeholder="?????? ??????" class="in_data" required></td>
							</tr>
							<tr>
								<th><label for="content">?????? ??????</label></th>
								<td>
									<textarea cols="100" rows="6" name="content" id="content" class="in_data2"></textarea>
								</td>
							</tr>
							<tr>
								<th><label for="author">?????????</label></th>
								<td>
									<input type="text" name="author" id="author" class="in_data" value='admin' readonly required>
									<input type="hidden" name="lev" id="lev" value="1">
									<input type="hidden" name="parno" id="parno" value='<%=parno %>'>
								</td>
							</tr>
							<tr>
								<th><label for="sec1">????????? ??????</label></th>
								<td>
									<input type="radio" name="sec" id="sec1" value="N" checked>
									<label for="">??????</label>
									<input type="radio" name="sec" id="sec2" value="Y">
									<label for="">?????????</label>
								</td>
							</tr>
							</tbody> 
						</table>
						<div class="btn_group">
							<button type="submit" class="btn primary">??? ??????</button>
							<a href="qna.jsp" class="btn primary">?????? ??? ?????? ??????</a>
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