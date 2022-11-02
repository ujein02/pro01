<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String sid = (String) session.getAttribute("id");
	
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
                <span class="sel">회원정보수정</span>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">회원정보수정</h2>
                <%@ include file="connectionPool.conf" %>
                <%
				sql = "select * from member1 where id=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, sid);
				rs = pstmt.executeQuery();
				if(rs.next()){
					
					%>
					<div class="frm1">
						<form name="frm" class="frm" action="memModifyPro.jsp" method="post" onsubmit="return joinAlert(this)">
							<table class="tb">
								<tbody>
									<tr>
										<th><label for="id">아이디</label></th>
										<td>
											<input type="text" name="id" id="id" class="in_data" value='<%=rs.getString("id") %>' readonly required>
										</td>
									</tr>
									<tr>
										<th><label for="pw">비밀번호</label></th>
										<td>
											<input type="password" name="pw" id="pw" class="in_data" value='<%=rs.getString("pw") %>' placeholder="영문숫자특수문자를 혼합하여 8글자 이상" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$" required>
										</td>
									</tr>
									<tr>
										<th><label for="pw2">비밀번호 확인</label></th>
										<td>
											<input type="password" name="pw2" id="pw2" class="in_data"  placeholder="영문숫자특수문자를 혼합하여 8글자 이상" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$" required>
										</td>
									</tr>
									<tr>
										<th><label for="name">회원명</label></th>
										<td>
											<input type="text" name="name" id="name" class="in_data" value='<%=rs.getString("name") %>' placeholder="한글 이름 입력" pattern="\[^(가-힣)]\" required>
										</td>
									</tr>
									<tr>
										<th><label for="from">이메일 주소</label></th>
										<td>
											<input type="email" name="email" id="email" class="in_data" value='<%=rs.getString("email") %>' pattern=".+@naver\.com" placeholder="네이버 이메일 주소를 입력" required >
										</td>
									</tr>
									<tr>
										<th><label for="tel">연락처</label></th>
										<td>
											<input type="tel" name="tel" id="tel" class="in_data" value='<%=rs.getString("tel") %>' pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}" required >
										</td>
									</tr>
								</tbody>
							</table>
							<div class="btn_group">
								<button type="submit" class="btn primary">회원 정보 수정</button>
								<button type="reset" class="btn primary">취소</button>
							</div>
						</form>
			            <script>
			            function joinAlert(f){
			            	if(f.pw.value!=f.pw2.value){
			            		alert("비밀번호와 비밀번호 확인이 서로 일치 하지 않습니다.");
			            		return false;
			            	}
			            }
			            </script>
					</div>
					<%
					}
					%>
					<%@ include file="connectionClose.conf" %>
				</div>
			</section>
		</div>
		<footer class="ft">
			<%@ include file="footer.jsp" %>
		</footer>
		</body>
		</html>