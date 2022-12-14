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
    /* .content { clear: both; width: 100%; } */
    .vs { clear:both; width: 100%; height:100vh; overflow:hidden; }
    .vdo { display:block; width:100%; height:auto; }
    
    /* content */
    .page {clear: both;width: 100%; }
    .page_wrap {width: 1200px; margin: 0 auto;  }
    #page1, #page3 {background-color: #ececec;  }
    .page_tit {text-align: center; font-size: 32px; padding-top: 1.2em; padding-bottom: 0.8em;}
    
    
    #page1 {background-color:rgba(230,248,255, 0.5);}
    .pic_lst { clear:both; width: 100%; padding-bottom: 80px; }
    .pic_lst:after { content:""; display:block; clear:both; }
    .pic_lst li { float:left; position:relative; margin-bottom: 40px; }
    .pic_lst li a { display:block; width: 360px; margin-right: 40px;
    overflow: hidden; height: 300px; }
    .pic_lst li a img { display:block; width:600px; margin-left: -120px; transition-duration:0.8s; }
    .pic_lst li a:hover img { margin-left: 0; }
    .pic_lst li a .hv_box { width: 360px; height: 300px; color:#fff; opacity:0; position:absolute; top:0; left: 0; z-index:10; transition-duration:0.8s; background-color:transparent; }
    .pic_lst li a:hover .hv_box { opacity:1; }
    .pic_tit { position:absolute; top:30px; left: 30px; 
    text-shadow:0px 0px 3px rgb(11, 10, 10);  }
    .pic_com { position:absolute; right:30px; bottom:30px; 
        text-shadow:0px 0px 3px  rgb(11, 10, 10); }

    #page2 { background-color: rgba(241, 227, 196, 0.266); }
    .lst{clear: both; width: 1200px;    }
    .lst:after {content: "" ; display: block; clear: both;}
    .lst li {margin-bottom: 40px;}
    .lst li.left { float:left; width: 816px; height: 459px; }
    .lst li.left img { display:block; width: auto; height: 459px; padding-left: 50px; }
    .lst li.right { float:right; width:350px; height: 459px; }

    .ico_lst { clear:both; width: 100%; overflow:hidden; }
    .ico_lst li a { display:block; background-repeat: no-repeat; 
    background-position:0px center; background-size:auto 80%; 
padding-left: 55px; }
    .ico_lst li a.icon1 { background-image: url("./img/gift.png"); }
    .ico_lst li a.icon2 { background-image: url("./img/coins.png");}
    .ico_lst li a.icon3 { background-image: url("./img/dip.png"); }
    .page_com { clear:both;  color:#222; font-size:12px; font-weight: 700; padding-bottom: 40px; padding-left: 50px;}

    .vdo3 { display:block; clear: both; width: 100%; height:auto; padding: auto; }

    

    /*overflow: hidden; white-space: nowrap;text-overflow: ellipsis; ????????? ??????*/
    /*.gnb > ul > li { width: 20%; text-align: center; }
    .gnb li .dp1 { display:block; height:40px; line-height: 40px; background-color: #333; color:#fff; }*/

    /* footer */
            
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
                <video src="./video/shillaseoul.mp4" autoplay muted class="vdo"></video>
            </figure>
            <section class="page" id="page1">
                <div class="page_wrap">
                    <h2 class="page_tit">????????? ??????<br>SPECIAL OFFERS</h2>
                    <ul class="pic_lst">
                        <li>
                            <a href="rewards.html#page3">
                                <img src="./img/kids.png" alt="??????" class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_tit">Kids Friendly Vacation</h3>
                                    <p class="pic_com">2022.09.01 ~ 2022.11.30</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="rewards.html#page3">
                                <img src="./img/mono2.jpg" alt="????????????" class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_tit">??????????????????<br> Member Exclusive</h3>
                                    <p class="pic_com">2022.10.01 ~ 2023.08.31</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="rewards.html#page3">
                                <img src="./img/cheeze.jpg" alt="?????????" class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_tit">??????????????????<br> Rewards Royal Tea Time</h3>
                                    <p class="pic_com">2022.10.03 ~ 2022.11.17</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="rewards.html#page3">
                                <img src="./img/mono.jpg" alt="????????????" class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_tit">?????????????????? ??????<br> Rewards Explore with Shilla</h3>
                                    <p class="pic_com">2022.06.01 ~ 2022.12.31
                                    </p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="rewards.html#page3">
                                <img src="./img/shillastay.png" alt="???????????????" class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_tit">???????????????<br> Rewards Artist of the Day</h3>
                                    <p class="pic_com">2022.09.27 ~ 2022.12.31</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="rewards.html#page3">
                                <img src="./img/seoul2.jpg" alt="????????????" class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_tit">Rewards Urban Autumn Weekend</h3>
                                    <p class="pic_com">2022.10.01 ~ 2022.11.27</p>
                                </div>
                            </a>
                        </li>
                     </ul>
                </div>
            </section>
            <section class="page" id="page2">
                <div class="page_wrap">
                    <h2 class="page_tit">???????????????<br>MEMBERSHIP</h2>
                    <ul class="lst">
                        <li class="left">
                            <img src="./img/benefitsinfo2.gif" alt="???????????????" class="pic2">
                            <!-- <iframe name="vdo2" id="vdo2" width="816" height="459" src="https://www.youtube.com/watch?v=pPfQM3o6IYg" title="???????????? ????????????" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe> -->
                            <!-- <iframe width="740" height="555" src="https://www.youtube.com/embed/pPfQM3o6IYg" title="?????? ???????????? ?????????????????? ????????? ?????????????????? ?????? ??????" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe> -->
                            
                        </li>
                        <li class="right">
                            <ul class="ico_lst">
                                <li>
                                    <a href="rewards.html#page1" target="pic2" class="icon1">
                                        <h3 class="cate_tit">??????????????? ??????</h3>
                                        <p class="cate_com">???????????? ????????? ???????????? ??????</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="rewards.html#page2" target="pic2" class="icon2">
                                        <h3 class="cate_tit">??????????????? ?????????</h3>
                                        <p class="cate_com">???????????? ??????????????? ?????????</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="rewards.html#page3" target="pic2" class="icon3">
                                        <h3 class="cate_tit">??????????????????</h3>
                                        <p class="cate_com">????????? ?????? ????????? ?????????</p>
                                    </a>
                                
                                </li>
                            
                            </ul>
                        
                        </li>
                    </ul>
                    <p class="page_com"> ??? ?????????????????? ??????????????????????????, ??????????????????, ??????????????? ??? ?????????????????? ????????? ?????? ??? ????????? ???????????? ??????????????? ??????????????????.<br>
                    ?????? ??????????????? ???????????? ?????? ????????? ???????????? ????????? ????????? ???????????????.</p>
                </div>
            </section>
            <section class="page" id="page3">
                <h2 class="page_tit">?????????<br>GALLERY</h2>
                <figure class="vs">
                    <video src="./video/shillajeju.mp4" autoplay muted loop class="vdo3" "> </video> <!--https://www.youtube.com/watch?v=IVNbjTIc9WA-->
                </figure>
            </section>
        </div>
        <footer class="ft">
            <%@ include file="footer.jsp" %>
        </footer>
    </div>
    </body>
    </html>