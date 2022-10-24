<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String) session.getAttribute("id");
	String name = (String) session.getAttribute("name");
%>
<div class="hd_wrap">
    <a href="" class="logo"><img src="./img/logo.gif" alt="로고"></a>
    <nav class="tnb">
    <%
    	if(id!=null && id.equals("admin")){
    %>
    	<div>
    		<span class="ip_print"><%=name %>님</span>
    		<a href="memList.jsp">회원관리</a>
    		<a href="boardList.jsp">게시판관리</a>
	        <a href="logout.jsp">로그아웃</a>
	    </div>
    <%
    	} else if(id!=null){
    %>  
    	<div>
    		<span class="ip_print"><%=name %>님</span>
	        <a href="logout.jsp">로그아웃</a>
	        <a href="memInfo.jsp">회원정보</a>
	        <a href="faq.jsp">고객문의</a>
        </div>
 	<%
    	} else {
    %>  
    	<div>
    		<a href="login.jsp">로그인</a>
	        <a href="term.jsp">회원가입</a>
	        <a href="faq.jsp">고객문의</a>
        </div>
    <% 
    	}
    %>   
          
    </nav>
    <nav class="gnb">
        <ul>
            <li class="item1">
                <a href="" class="dp1">About Company</a>
                <ul class="sub">
                    <li><a href="company.jsp#page1">기업개요</a></li>
                    <li><a href="company.jsp#page2">비젼&미션</a></li>
                    <li><a href="company.jsp#page3">연혁</a></li>
                </ul>
            </li>
            <li class="item2">
                <a href="" class="dp1">호텔신라</a>
                <ul class="sub">
                    <li><a href="hotel.jsp#page1">서울신라호텔</a></li>
                    <li><a href="hotel.jsp#page2">제주신라호텔</a></li>
                    <li><a href="hotel.jsp#page3">신라스테이</a></li>
                </ul>
            </li>
            <li class="item3">
                <a href="" class="dp1">신라리워즈</a>
                <ul class="sub">
                    <li><a href="rewards.jsp#page1">회원 특전</a></li>
                    <li><a href="rewards.jsp#page2">포인트 안내</a></li>
                    <li><a href="rewards.jsp#page3">회원전용 프로모션</a></li>
                </ul>
            </li>
            <li class="item4">
                <a href="" class="dp1">Business Area</a>
                <ul class="sub">
                    <li><a href="area.jsp#page1">TR부문</a></li>
                    <li><a href="area.jsp#page2">호텔부문</a></li>
                    <li><a href="area.jsp#page3">레저부문</a></li>
                </ul>
            </li>
            <li class="item5">
                <a href="" class="dp1">Investor Relations</a>
                <ul class="sub">
                    <li><a href="ir.jsp#page1">공시정보</a></li>
                    <li><a href="ir.jsp#page2">지배구조</a></li>
                    <li><a href="ir.jsp#page3">IR자료실</a></li>
                </ul>
            </li>
        </ul>
    </nav>
</div>