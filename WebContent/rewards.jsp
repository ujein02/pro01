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
    .content { display:none; }
    .content:target { display:block; }

    .page_title { padding-top: 1em; height: 50px; border-bottom:3px solid rgb(198, 180, 142)  }
    .rewards_fr {width: 1200px; white-space: pre-wrap; margin: 0px auto; }
    .con_img {display: block; margin: 0 auto;}
    /* .rewards_fr h4{clear:both;  padding-left: 140px;} */
    .rewards_con {clear: both; color: rgb(121, 119, 119); }
    
    .rewards_fr h4, .rewards_fr p{clear: both; color:rgb(111, 109, 109);padding-left: 160px;}
    .rewards_fr p{font-size: 13px; line-height: 0.5px;}

    .prom_lst { width:100%; float:left; margin-bottom: 50px; }
    .prom_lst li { clear:both; border-bottom:3px solid #ececec; height: 150px;  }
    .prom_lst li:first-child { border-top:3px solid #ececec; }
    .prom_lst li a { display:block; }
    .prom_lst li .img_fr { width: 250px; height: 150px; overflow:hidden; float:left; }
    .prom_lst li .img_fr img { display:block; width: 100%; height:auto; margin-top:4px; }
    .prom_lst li .com_fr { padding-left: 30px; float:left; color: rgb(121, 119, 119); }
    .prom_tit { line-height: 2.4; text-overflow: ellipsis; overflow: hidden; white-space:nowrap; }
    .prom_data{font-size: 11px;}
    .prom_com { line-height:2; text-overflow: ellipsis; overflow: hidden; white-space:nowrap; }

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
                <img src="./img/main.jpg" alt="?????????">
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.jsp" class="home">HOME</a> &gt;
                    <select name="sel1" id="sel1" class="sel">
                        <option>???????????????</option>
                        <option value="company.jsp#page1">About Company</option>
                        <option value="hotel.jsp#page1">????????????</option>
                        <option value="area.jsp#page1">Business Area</option>
                        <option value="ir.jsp#page1">Investor Relations</option>
                    </select> &gt; 
                    <select name="sel2" id="sel2" class="sel">
                        <option>?????? ??????</option>
                        <option value="rewards.jsp#page2">????????? ??????</option>
                        <option value="rewards.jsp#page3">???????????? ????????????</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">?????? ??????</h2>
                    <div class="rewards_fr">
                        <figure class=""></figure>
                        <img src="./img/benefits_tit2.gif" alt="?????????" class="con_img"><br><br>
                        <img src="./img/benefitsinfo2.gif" alt="?????????" class="con_img">
                    </div>
                </div>
            </section>
        </div>
        <div class="content" id="page2">
            <figure class="vs">
                <img src="./img/main.jpg" alt="?????????">
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.jsp" class="home">HOME</a> &gt;
                    <select name="sel3" id="sel3" class="sel">
                        <option>???????????????</option>
                        <option value="company.jsp#page1">About Company</option>
                        <option value="hotel.jsp#page1">????????????</option>
                        <option value="area.jsp#page1">Business Area</option>
                        <option value="ir.jsp#page1">Investor Relations</option>
                    </select> &gt; 
                    <select name="sel4" id="sel4" class="sel">
                        <option selected>????????? ??????</option>
                        <option value="rewards.jsp#page1">?????? ??????</option>
                        <option value="rewards.jsp#page3">???????????? ????????????</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">????????? ??????</h2>
                    <div class="rewards_fr">
                        <figure class=""></figure>
                        <img src="./img/rewards.gif" alt="?????????" class="con_img"><br><br>
                            <h4>????????? ??????</h4>
                            <p>?????? 1??????????????? ???????????? ?????? ???????????????.</p>
                            <h4>????????? ??????</h4>
                            <p>???????????? ????????????????????? ?????? ?????? ??? ????????????.</p>
                            <p>(???????????? ??? ????????? ??? ?????????>???????????????>????????? ????????????)</p>
                            <p>??? ??????????????? ????????? ??? ?????? ????????? ??????????????? ?????????????????? ?????? ???????????????.</p><br><br>
                        </div>    
                    </div>
                </div>
            </section>
        </div>
        <div class="content" id="page3">
            <figure class="vs">
                <img src="./img/main.jpg" alt="?????????">
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.jsp" class="home">HOME</a> &gt;
                    <select name="sel5" id="sel5" class="sel">
                        <option>???????????????</option>
                        <option value="company.jsp#page1">About Company</option>
                        <option value="hotel.jsp#page1">????????????</option>
                        <option value="area.jsp#page1">Business Area</option>
                        <option value="ir.jsp#page1">Investor Relations</option>
                    </select> &gt; 
                    <select name="sel6" id="sel6" class="sel">
                        <option selected>???????????? ????????????</option>
                        <option value="rewards.jsp#page1">?????? ??????</option>
                        <option value="rewards.jsp#page2">????????? ??????</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">???????????? ????????????</h2>
                    <ul class="prom_lst">
                        <li>
                            <a href="">
                                <div class="img_fr"><img src="./img/pro1.jpg" alt=""></div>
                                <div class="com_fr">
                                    <h4 class="prom_tit">[???????????????] ????????? 5?????? ?????????</h4>
                                    <p class="prom_date">2022-09-01~2022-10-31</p>
                                    <p class="prom_com">?? ??????????????? ?????? ?????? ???????????? ??????????????? 5?????? ?????? ????????? ????????? ?????????!</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="img_fr"><img src="./img/pro2.jpg" alt=""></div>
                                <div class="com_fr">
                                    <h4 class="prom_tit">???????????? ????????? ?????????/???????????? ????????? ??????</h4>
                                    <p class="prom_date">2022-01-18 ~ 2022-12-31</p>
                                    <p class="prom_com">?? ??????????????? ????????? ????????? ?????? ???????????? ????????? ?????? ????????? ?????????/???????????? ???????????? ???????????????.</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="img_fr"><img src="./img/pro3.jpg" alt=""></div>
                                <div class="com_fr">
                                    <h4 class="prom_tit">??????????????? 10??? ?????? ???, 1??? ?????? ????????? ??????</h4>
                                    <p class="prom_date">2019-11-25 ~ 2023-12-31</p>
                                    <p class="prom_com">?? ??????????????? ???????????? ???????????? ????????? ????????? ?????? ?????????!</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="img_fr"><img src="./img/pro4.jpg" alt=""></div>
                                <div class="com_fr">
                                    <h4 class="prom_tit">[????????????] The Green, The Shilla</h4>
                                    <p class="prom_date">2022-07-01 ~ 2022-12-31</p>
                                    <p class="prom_com">?? ??????????????? ????????? ????????? ???????????? ????????? ????????? ???????????????.</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="img_fr"><img src="./img/pro5.jpg" alt=""></div>
                                <div class="com_fr">
                                    <h4 class="prom_tit">Kids Friendly Vacation</h4>
                                    <p class="prom_date">2022-03-17 ~ 2022-11-30</p>
                                    <p class="prom_com">?? ???????????? ??? ??????????????? ????????? ?????????</p>
                                </div>
                            </a>
                        </li>
                    </ul>    
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
    <a href="" class="to_top">???</a><!-- .to_top.on -->
    </body>
    </html>