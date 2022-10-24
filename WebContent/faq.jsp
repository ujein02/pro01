<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="head.jsp" %>
    <link rel="stylesheet" href="./css/reset2.css">
    <link rel="stylesheet" href="header.css">
    <style>
    /* header.css */
    /* .hd { width: 100%; height:122px; position:absolute; top: 0; left: 0; z-index:91; background-color:}
    .hd_wrap { width: 1200px; margin: 0 auto; } */
    .hd { position:fixed; }
   
    
    /* content */
    .vs { clear:both; width: 100%; height:300px; overflow: hidden; padding-top: 100px;}
    .vs img { display:block; width: 100%; height:auto; }
    .bread { clear:both; width: 100%; line-height: 60px; border-bottom:3px solid #eee; }
    .bread_fr { width: 1200px; margin: 0 auto; }
    .page { clear:both; width: 100%; min-height:100vh;}
    .page:after { content:""; display:block; clear:both; }
    .page_wrap { width: 1200px; margin: 0 auto; }
    
    .page_title {  padding-top: 1em; height: 50px; border-bottom:3px solid rgb(198, 180, 142) }
    .home { color:#333; }

    .ir_fr {width: 1200px; white-space: pre-wrap; margin: 0px auto; }
    .con_img {display: block; }
    .ir_fr h4, .ir_fr p{clear: both; color:rgb(111, 109, 109);}
    .ir_fr p{font-size: 13px; line-height: 0.5px;}

    .faq_lst {  width:1200px; float:left; padding-top: 30px; }
    .faq_lst li { clear:both; height:32px; border-bottom:1px solid rgb(181, 180, 180); box-sizing:border-box; }
    .faq_lst li:first-child { border-top:1px solid  rgb(181, 180, 180) }
    .faq_lst li span { display:block; box-sizing:border-box; float:left; line-height: 32px; font-size:14px; }
    .faq_cat { width: 200px; text-align:center; }
    .faq_con { width: 900px; overflow:hidden; text-overflow:ellipsis; white-space:nowrap; color:rgb(111, 109, 109); }
    
    
    </style>
    <link rel="stylesheet" href="footer.css">
    <script>
        $(document).ready(function(){
        $(".to_top").attr("href", location.href);
        $(window).scroll(function(){
            var ht = $(window).height();
            var tp = $(this).scrollTop();
            if(tp>=300){
                $(".to_top").addClass("on");
                $(".to_top").attr("href", location.href);
            } else {
                $(".to_top").removeClass("on");
                $(".to_top").attr("href", location.href);
            }
        });
    });    
    </script>
</head>
<body>
    <div class="wrap">
        <header class="hd">
            <%@ include file="nav.jsp" %>
        </header>
        <div class="content" > 
            <figure class="vs">
                <img src="./img/main.jpg" alt="비주얼">
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.html" class="home">HOME</a> &gt;
                    <span class="sel">고객문의</span>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">자주하는 질문</h2>
                    <ul class="faq_lst">
                        <li>
                            <span class="faq_cat">기타</span>
                            <span class="faq_con"><a href="">Q.객실 업그레이드 쿠폰은 어떻게 사용하나요?</a></span>
                        </li>
                        <li>
                            <span class="faq_cat">기타</span>
                            <span class="faq_con"><a href="">Q.객실 패키지 이용 금액은 포인트 적립 기준이 어떻게 되나요?</a></span>
                        </li>
                        <li>
                            <span class="faq_cat">기타</span>
                            <span class="faq_con"><a href="">Q.등급 점수는 어디서 확인이 가능한가요?</a></span>
                        </li>
                        <li>
                            <span class="faq_cat">기타</span>
                            <span class="faq_con"><a href="">Q.로그인이 안됩니다.</a></span>
                        </li>
                        <li>
                            <span class="faq_cat">기타</span>
                            <span class="faq_con"><a href="">Q.멤버십 카드(모바일 카드)는 어디서 확인이 가능한가요?</a></span>
                        </li>
                        <li>
                            <span class="faq_cat">기타</span>
                            <span class="faq_con"><a href="">Q.모바일 쿠폰은 어떻게 확인/사용하나요?</a></span>
                        </li>
                        <li>
                            <span class="faq_cat">기타</span>
                            <span class="faq_con"><a href="">Q.신라리워즈 멤버십센터의 운영시간은 어떻게 되나요?</a></span>
                        </li>
                        <li>
                            <span class="faq_cat">기타</span>
                            <span class="faq_con"><a href="">Q.신라리워즈 포인트 적립은 어떻게 하나요?</a></span>
                        </li>
                        <li>
                            <span class="faq_cat">기타</span>
                            <span class="faq_con"><a href="">Q.회원 정보 수정은 어떻게 하나요?</a></span>
                        </li>
                        <li>
                            <span class="faq_cat">신라리워즈가입</span>
                            <span class="faq_con"><a href="">Q.신라리워즈 가입은 어떻게 하나요?</a></span>
                        </li>
                        <li>
                            <span class="faq_cat">신라리워즈가입</span>
                            <span class="faq_con"><a href="">Q.온라인 계정 활성화 등록과 온라인 가입의 차이점은 무엇인가요?</a></span>
                        </li>
                        <li>
                            <span class="faq_cat">포인트 적립/사용</span>
                            <span class="faq_con"><a href="">Q.포인트 적립률은 어떻게 되나요?</a></span>
                        </li>
                        <li>
                            <span class="faq_cat">포인트 적립/사용</span>
                            <span class="faq_con"><a href="">Q.포인트가 적립되지 않는 객실 상품은 무엇인가요?</a></span>
                        </li>
                        <li>
                            <span class="faq_cat">포인트 조정</span>
                            <span class="faq_con"><a href="">Q.[포인트 조정 신청] 포인트 적립이 누락되었습니다.</a></span>
                        </li>
                    </ul>    
                </div>
            </section>
        </div>
                    
        <footer class="ft">
            <%@ include file="footer.jsp" %>
        </footer>
    </div>
    
    </body>
    </html>