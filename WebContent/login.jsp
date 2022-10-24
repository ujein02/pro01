<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
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
    
    .page_title { padding-top: 1em; }
    .home { color:#333; }

    .frm { border:2px solid #333; padding: 24px; width: 580px; margin:50px auto; }
    .frm_tb { display:table; margin:40px auto;  }
    .frm_tb tr { display:table-row; }
    .frm_tb td, .frm_tb th { display:table-cell; }
    .frm_tb th { width:200px; height: 48px;  }
    .frm_tb td { width:300px; height: 48px; }
    .frm_tb label:before { content:"*"; }

    .in_dt { background-color:#fff; height:32px; line-height: 32px; width: 280px; color:#333; font-size:16px; text-indent:0.5em; }
    .in_btn { display:block; background-color:#333; min-width:120px; height: 32px; line-height: 32px; border-radius:20px; float:left; margin-left:80px; margin-right:20px; cursor:pointer; }
    .in_btn:hover { background-color: #fff; color: #333; }
  
    
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
                    <a href="index.jsp" class="home">HOME</a> &gt;
                    <span class="sel">로그인</span>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">로그인</h2>
                    <div class="form_fr">
                        <form name="frm1" action="loginPro.jsp" method="post" id="" class="frm">
                            <table class="frm_tb">
                                <tbody>
                                    <tr>
                                        <th><label for="id">아이디</th></label>
                                        <td><input type="text" id="id" name="id" class="in_dt" required autofocus>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th><label for="pw">비밀번호</th></label>
                                        <td><input type="password" id="pw" name="pw" class="in_dt">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <button type="submit" class="in_btn">로그인</button>
                                            <button type="reset" class="in_btn">취소</button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
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