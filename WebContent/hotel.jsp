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
    .vs img { display:block; width: 100%; height:auto;  }
    .bread { clear:both; width: 100%; line-height: 60px; border-bottom:3px solid #eee; }
    .bread_fr { width: 1200px; margin: 0 auto; }
    .page { clear:both; width: 100%; min-height:100vh;}
    .page:after { content:""; display:block; clear:both; }
    .page_wrap { width: 1200px; margin: 0 auto; }
    .content { display:none; }
    .content:target { display:block; }

    .page_title { padding-top: 1em; height: 50px; border-bottom:3px solid rgb(198, 180, 142)  }
    .hotel_fr {width: 1200px;  white-space:pre-wrap; margin: 0px auto;  }
    .con_img {display: block; margin: 0 auto;}
    


    .home { color:#333; }
    .to_top { position:fixed; bottom:80px; right:80px; z-index:999; background-color:rgba(11,11,11,0.75); color:#fff; display:block; width: 60px;height: 60px; line-height: 60px; text-align: center; font-size:20px; border-radius:32px; visibility:hidden; transition-duration:0.8s; } /*visibility:hidden; transition-duration:0.8s;*/
    .to_top:hover { background-color: deepskyblue; }
    /* .to_top.on { visibility: visible; } */
    
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
        <div class="content" id="page1"> 
            <figure class="vs">
                <img src="./img/main.jpg" alt="비주얼">
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.jsp" class="home">HOME</a> &gt;
                    <select name="sel1" id="sel1" class="sel">
                        <option>호텔신라</option>
                        <option value="company.jsp#page1">About Company</option>
                        <option value="rewards.jsp#page1">신라리워즈</option>
                        <option value="area.jsp#page1">Business Area</option>
                        <option value="ir.jsp#page1">Investor Relations</option>
                    </select> &gt; 
                    <select name="sel2" id="sel2" class="sel">
                        <option>서울신라호텔</option>
                        <option value="hotel.jsp#page2">제주신라호텔</option>
                        <option value="hotel.jsp#page3">신라스테이</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">서울신라호텔</h2>
                    <div class="hotel_fr">
                        <figure class=""></figure>
                        <img src="./img/seoul_main.jpg" alt="이미지" class="con_img">
                        <img src="./img/seoul_main_t.jpg" alt="이미지" class="con_img">
                </div>
            </section>
        </div>
        <div class="content" id="page2">
            <figure class="vs">
                <img src="./img/main.jpg" alt="비주얼">
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.jsp" class="home">HOME</a> &gt;
                    <select name="sel3" id="sel3" class="sel">
                        <option>호텔신라</option>
                        <option value="company.jsp#page1">About Company</option>
                        <option value="rewards.jsp#page1">신라리워즈</option>
                        <option value="area.jsp#page1">Business Area</option>
                        <option value="ir.jsp#page1">Investor Relations</option>
                    </select> &gt; 
                    <select name="sel4" id="sel4" class="sel">
                        <option selected>제주신라호텔</option>
                        <option value="hotel.jsp#page1">서울신라호텔</option>
                        <option value="hotel.jsp#page3">신라스테이</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">제주신라호텔</h2>
                    <div class="hotel_fr">
                        <figure class=""></figure>
                        <img src="./img/jeju_main.jpg" alt="이미지" class="con_img">
                        <img src="./img/jeju_main_t.jpg" alt="이미지" class="con_img">
                    </div>
                </div>
            </section>
        </div>
        <div class="content" id="page3">
            <figure class="vs">
                <img src="./img/main.jpg" alt="비주얼">
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.jsp" class="home">HOME</a> &gt;
                    <select name="sel5" id="sel5" class="sel">
                        <option>호텔신라</option>
                        <option value="company.jsp#page1">About Company</option>
                        <option value="rewards.jsp#page1">신라리워즈</option>
                        <option value="area.jsp#page1">Business Area</option>
                        <option value="ir.jsp#page1">Investor Relations</option>
                    </select> &gt; 
                    <select name="sel6" id="sel6" class="sel">
                        <option selected>신라스테이</option>
                        <option value="hotel.jsp#page1">서울신라호텔</option>
                        <option value="hotel.jsp#page2">제주신라호텔</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">신라스테이</h2>
                    <div class="hotel_fr">
                        <figure class=""></figure>
                        <img src="./img/shillastay.gif" alt="이미지" class="con_img">
                    </div>
                </div>
            </section>
        </div>
        <script>
            var sel = document.getElementsByClassName("sel");
            for(var i=0;i<sel.length;i++){
                sel[i].addEventListener("change", function(){
                    location.href = this.value;
                });
            }
            </script>
            
        <footer class="ft">
            <%@ include file="footer.jsp" %>
        </footer>
    </div>
    <a href="" class="to_top">↑</a><!-- .to_top.on -->
    </body>
    </html>