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
  


    .content { display:none; }
    .content:target { display:block; }

    .page_title { padding-top: 1em; }
    .company_fr {width: 1200px; white-space:pre-wrap; margin: 0px auto; padding: 24px;  border:2px solid #eee;  color: rgb(121, 119, 119);}
    .con_img {display: block;}
    .company_fr h4{color: #000;}

    .mis_lst {  clear:both ; width:1200px; height:280px; }
    .mis_tit { width: 400px; height:24px; border-bottom:1px solid #333; box-sizing:border-box; font-weight: bold;}
    .mis_con { width: 800px; height:24px; border-bottom:1px dotted #333; box-sizing:border-box; text-align: center;  }

    .page_aside { width: 200px; min-height:500px; float:left; }
    .year_fr { width: 1000px; min-height:500px; float:right; }
    .year_lst { clear: both; border-left:1px solid #333; }
    .year_lst li { clear:both; height: 70px; position:relative; }
    .year_lst li:before { content:""; display:block; width: 10px; height: 10px; 
border-radius:8px; background-color:#333; position:absolute; top:0px; left:-6px; z-index:10; }
    .year_lst li h4, .year_lst li p { padding-left: 30px; }
    .year_lst li p{color: rgb(121, 119, 119); font-size: 15px;}

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
                        <option>About Company</option>
                        <option value="hotel.jsp#page1">호텔신라</option>
                        <option value="rewards.jsp#page1">신라리워즈</option>
                        <option value="area.jsp#page1">Business Area</option>
                        <option value="ir.jsp#page1">Investor Relations</option>
                    </select> &gt; 
                    <select name="sel2" id="sel2" class="sel">
                        <option>기업개요</option>
                        <option value="company.jsp#page2">비젼&미션</option>
                        <option value="company.jsp#page3">연혁</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">기업개요</h2>
                    <div class="company_fr">
                        <figure class=""></figure>
                        <img src="./img/company1.gif" alt="이미지" class="con_img"><br><br>
호텔신라는 천년 역사와 함께 가장 찬란한 문화예술의 꽃을 피웠던 신라 왕조의 이름에서 유래하였으며, 삼성그룹 故 이병철 창업주의 뜻에 따라 1979년 3월 서울신라호텔을 개관하였습니다.<br><br>
                        <h4>The Best Hospitality&Travel Retail Company</h4><br><br>
호텔신라는 ‘최고의 호스피탈리티 기업’을 목표로 오랜 세월 동안 전통과 혁신을 유지하며 고객들의 마음을 사로잡아 왔습니다.
신라호텔은 LHW 가입을 통해 세계 최고의 럭셔리 호텔들과 어깨를 나란히 하는가 하면 고유의 브랜드 가치와 서비스 역량을 바탕으로 어퍼 업스케일 브랜드인 신라모노그램과 프리미엄 비즈니스 호텔 신라스테이를 선보이며 3대 호텔 브랜드 체계를 구축하였습니다. 

또한 서비스 기업으로서의 노하우를 계승한 신라면세점을 통해 국내∙외 고객에게 다양하고 트렌디한 상품을 제공하며 최고의 글로벌 선진 면세유통기업으로서 자리매김했으며, 국내∙외 호텔 사업 확장과 피트니스 시설의 위탁 운영을 비롯, 비즈니스 여행과 헬스케어 사업까지 그 범위를 확대하고 있습니다.

호텔신라는 앞으로도 끊임없는 창조적 혁신과 도전을 바탕으로 차별화된 최상의 가치를 선사하는 글로벌 호스피탈리티 명문 기업이자 선진 유통기업으로 성장할 것을 약속 드립니다.

                    </div>
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
                        <option>About Company</option>
                        <option value="hotel.jsp#page1">호텔신라</option>
                        <option value="rewards.jsp#page1">신라리워즈</option>
                        <option value="area.jsp#page1">Business Area</option>
                        <option value="ir.jsp#page1">Investor Relations</option>
                    </select> &gt; 
                    <select name="sel4" id="sel4" class="sel">
                        <option selected>비젼&미션</option>
                        <option value="company.jsp#page1">기업개요</option>
                        <option value="company.jsp#page3">연혁</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">비젼&미션</h2>
                    <div class="company_fr">
                        <figure class=""></figure>
                        <img src="./img/vision.gif" alt="이미지" class="con_img">
                        <img src="./img/mission.gif" alt="이미지" class="con_img">
                        <ul class="mis_lst">
                            <li><span class="mis_tit"></span><span class="mis_con">우리는 최고의 라이프스타일 전문가로서 더 많은 인류에게 품격과 자부심을 경험케 한다.</span></li>
                            <li><span class="mis_tit">신라인으로서 미션</span>&nbsp;&nbsp;<span class="mis_con">우리는 Premium Lifestyle을 선도하는 신라인으로서 각각의 분야에서 최고의 전문가로 성장한다.</span></li>
                            <li><span class="mis_tit">고객에 대한 미션</span>&nbsp;&nbsp;<span class="mis_con">우리는 더 많은 고객이 다양한 생활영역에서 신라만의 품격과 자부심을 경험케 한다.</span></li>
                            <li><span class="mis_tit">사회에 대한 미션</span>&nbsp;&nbsp;<span class="mis_con">우리는 지속적인 혁신과 성장을 통해 인류가 더 나은 삶을 누릴 수 있도록 기여한다.</span></li>
                        </ul>
                        <img src="./img/core.gif" alt="이미지" class="con_img"><br><br>

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
                        <option>About Company</option>
                        <option value="hotel.jsp#page1">호텔신라</option>
                        <option value="rewards.jsp#page1">신라리워즈</option>
                        <option value="area.jsp#page1">Business Area</option>
                        <option value="ir.jsp#page1">Investor Relations</option>
                    </select> &gt; 
                    <select name="sel6" id="sel6" class="sel">
                        <option selected>연혁</option>
                        <option value="company.jsp#page1">기업개요</option>
                        <option value="company.jsp#page2">비젼&미션</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">연혁</h2><br>
                    <div class="page_aside">
                        <h3 class="aside_tit">2020년대</h3>
                    </div>
                    <div class="year_fr">
                        <ul class="year_lst">
                            <li>
                                <h4 class="year_tit">2021. 02.</h4>
                                <p class="yesr_com">서울신라호텔 포브스 트래블 가이드 5스타 선정 (3년 연속)</p>
                            </li>
                            <li>
                                <h4 class="year_tit">2021. 03.</h4>
                                <p class="yesr_com">한국산업의 브랜드파워(K-BPI) 신라호텔 호텔부문 1위 (4년 연속)</p>
                            </li>
                            <li>
                                <h4 class="year_tit">2021. 03.</h4>
                                <p class="yesr_com">한국산업의 브랜드파워(K-BPI) 신라스테이 비즈니스 호텔부문 1위 (2년 연속)</p>
                            </li>
                            <li>
                                <h4 class="year_tit">2021. 04.</h4>
                                <p class="yesr_com">신라스테이 서부산 오픈</p>
                            </li>
                            <li>
                                <h4 class="year_tit">2021. 11.</h4>
                                <p class="yesr_com">서울신라호텔 한식당 라연 미쉐린 3스타 선정 (6년 연속)</p>
                            </li>
                            <li>
                                <h4 class="year_tit">2021. 11.</h4>
                                <p class="yesr_com">서울신라호텔 한식당 라연 라 리스트 TOP 150 선정</p>
                            </li>
                            <li>
                                <h4 class="year_tit">2020. 02.</h4>
                                <p class="yesr_com">서울신라호텔 포브스 트래블 가이드 5스타 선정 (2년 연속)</p>
                            </li>
                            <li>
                                <h4 class="year_tit">2020. 03.</h4>
                                <p class="yesr_com">한국산업의 브랜드파워(K-BPI) 신라호텔 호텔부문 1위 (3년 연속)</p>
                            </li>
                            <li>
                                <h4 class="year_tit">2020. 03.</h4>
                                <p class="yesr_com">한국산업의 브랜드파워(K-BPI) 신라스테이 비즈니스 호텔부문 1위</p>
                            </li>
                            <li>
                                <h4 class="year_tit">2020. 06.</h4>
                                <p class="yesr_com">신라모노그램 다낭 소프트 오픈</p>
                            </li>
                            <li>
                                <h4 class="year_tit">2020. 06.</h4>
                                <p class="yesr_com">인터브랜드 Best Korea Brands 50 선정</p>
                            </li>
                            <li>
                                <h4 class="year_tit">2020. 11.</h4>
                                <p class="yesr_com">서울신라호텔 한식당 라연 미쉐린 가이드 3스타 선정 (5년 연속)</p>
                            </li>
                            <li>
                                <h4 class="year_tit">2020. 12.</h4>
                                <p class="yesr_com">제57회 무역의날 ‘9억불 수출탑‘ 선정</p>
                            </li>
                        </ul>
                    </div>
                    <div class="page_aside">
                        <h3 class="aside_tit">2010년대</h3>
                    </div>
                    <div class="year_fr">
                        <ul class="year_lst">
                            <li>
                                <h4 class="year_tit">2019. 01.</h4>
                                <p class="yesr_com">신라면세점 김포공항점 오픈</p>
                            </li>
                            <li>
                                <h4 class="year_tit">2019. 02.</h4>
                                <p class="yesr_com">서울신라호텔 국내 호텔 최초 포브스 트래블 가이드 5스타 선정</p>
                            </li>
                            <li>
                                <h4 class="year_tit">2019. 03.</h4>
                                <p class="yesr_com">한국산업의 브랜드파워(K-BPI) 신라호텔 호텔부문 1위 (2년 연속)</p>
                            </li>
                            <li>
                                <h4 class="year_tit">2019. 04.</h4>
                                <p class="yesr_com">인터브랜드 Best Korea Brands 50 선정</p>
                            </li>
                            <li>
                                <h4 class="year_tit">2019. 10.</h4>
                                <p class="yesr_com">신라면세점 한국산업의 고객만족도(KCSI) 면세점부문 1위</p>
                            </li>
                            <li>
                                <h4 class="year_tit">2019. 11.</h4>
                                <p class="yesr_com">신라면세점 마카오공항점 오픈</p>
                            </li>
                            <li>
                                <h4 class="year_tit">2019. 11.</h4>
                                <p class="yesr_com">서울신라호텔 한식당 라연 미쉐린 3스타 선정 (4년 연속)</p>
                            </li>
                            <li>
                                <h4 class="year_tit">2019. 12.</h4>
                                <p class="yesr_com">서울신라호텔 한식당 라연 라 리스트 TOP 150 선정</p>
                            </li>
                            <li>
                                <h4 class="year_tit">2018. 01.</h4>
                                <p class="yesr_com">신라면세점 인천공항점 2터미널 오픈</p>
                            </li>
                            <li>
                                <h4 class="year_tit">2018. 03.</h4>
                                <p class="yesr_com">인터브랜드 Best Korea Brands 50 선정</p>
                            </li>
                            <li>
                                <h4 class="year_tit">2018. 03.</h4>
                                <p class="yesr_com">한국산업의 브랜드파워(K-BPI) 신라호텔 호텔부문 1위</p>
                            </li>
                            <li>
                                <h4 class="year_tit">2018. 06.</h4>
                                <p class="yesr_com">신라면세점 제주공항점 그랜드 오픈</p>
                            </li>
                            <li>
                                <h4 class="year_tit">2018. 06.</h4>
                                <p class="yesr_com">신라면세점 홍콩공항점 그랜드 오픈</p>
                            </li>
                            <li>
                                <h4 class="year_tit">2018. 10.</h4>
                                <p class="yesr_com">서울신라호텔 한식당 라연 미쉐린 3스타 선정 (3년 연속)</p>
                            </li>
                            <li>
                                <h4 class="year_tit">2018. 10.</h4>
                                <p class="yesr_com">신라면세점 한국산업의 고객만족도(KCSI) 면세점부문 1위</p>
                            </li>
                            <li>
                                <h4 class="year_tit">2018. 12.</h4>
                                <p class="yesr_com">서울신라호텔 한식당 라연 한국 레스토랑 최초 라 리스트 TOP 200 선정</p>
                            </li>
                            <li>
                                <h4 class="year_tit">2017. 02.</h4>
                                <p class="yesr_com">호텔신라 '한국에서 가장 존경받는 기업' 선정</p>
                            </li>
                            <li>
                                <h4 class="year_tit">2017. 02.</h4>
                                <p class="yesr_com">서울신라호텔 한식당 라연 아시아 50대 레스토랑 선정</p>
                            </li>
                            <li>
                                <h4 class="year_tit">2017. 03.</h4>
                                <p class="yesr_com">인터브랜드 Best Korea Brands 50 선정</p>
                            </li>
                            <li>
                                <h4 class="year_tit">2017. 04.</h4>
                                <p class="yesr_com">신라스테이 서초 오픈</p>
                            </li>
                            <li>
                                <h4 class="year_tit">2017. 04.</h4>
                                <p class="yesr_com">신라스테이 해운대 오픈</p>
                            </li>
                            <li>
                                <h4 class="year_tit">2017. 04.</h4>
                                <p class="yesr_com">신라면세점 도쿄점 다카시마야 S&A 오픈</p>
                            </li>
                            <li>
                                <h4 class="year_tit">2017. 10.</h4>
                                <p class="yesr_com">신라면세점 한국산업의 고객만족도(KCSI) 면세점부문 1위</p>
                            </li>
                            <li>
                                <h4 class="year_tit">2017. 11.</h4>
                                <p class="yesr_com">서울신라호텔 한식당 라연 미쉐린 3스타 선정 (2년 연속)</p>
                            </li>
                            <li>
                                <h4 class="year_tit">2017. 12.</h4>
                                <p class="yesr_com">신라면세점 홍콩공항점 오픈</p>
                            </li>
                            <li>
                                <h4 class="year_tit">2017. 01.</h4>
                                <p class="yesr_com"></p>
                            </li>
                            
                        </ul>
                    </div>
                    <div class="page_aside">
                        <h3 class="aside_tit">1980년대</h3>
                    </div>
                    <div class="year_fr">
                        <ul class="year_lst">
                            <li>
                                <h4 class="year_tit">1989. 08.</h4>
                                <p class="yesr_com">신라면세점 제주점 오픈</p>
                            </li>
                            <li>
                                <h4 class="year_tit">1989. 10.</h4>
                                <p class="yesr_com">관광업계 경영컨설팅사업 본격 개시</p>
                            </li>
                            <li>
                                <h4 class="year_tit">1988. 03.</h4>
                                <p class="yesr_com">제주신라호텔 기공식</p>
                            </li>
                            <li>
                                <h4 class="year_tit">1988. 09.</h4>
                                <p class="yesr_com">서울신라호텔 제 24회 서울올림픽 본부호텔</p>
                            </li>
                            <li>
                                <h4 class="year_tit">1987. 01.</h4>
                                <p class="yesr_com">서비스교육원 개원</p>
                            </li>
                            <li>
                                <h4 class="year_tit">1986. 07.</h4>
                                <p class="yesr_com">신라면세점 서울점 오픈</p>
                            </li>
                            <li>
                                <h4 class="year_tit">1985. 05.</h4>
                                <p class="yesr_com">대한생명 63빌딩 식당 기술용역 제공실시</p>
                            </li>
                            <li>
                                <h4 class="year_tit">1984. 08.</h4>
                                <p class="yesr_com">프레스센타 식당 운영계약체결</p>
                            </li>
                            <li>
                                <h4 class="year_tit">1984. 10.</h4>
                                <p class="yesr_com">동방프라자 식당가 개업</p>
                            </li>
                            <li>
                                <h4 class="year_tit">1982. 09.</h4>
                                <p class="yesr_com">무역회관 클럽식당 수탁운영 개시</p>
                            </li>
                            <li>
                                <h4 class="year_tit">1982. 11.</h4>
                                <p class="yesr_com">안양컨츄리클럽 식당 임차운영 개시</p>
                            </li>
                            <li>
                                <h4 class="year_tit">1981. 09.</h4>
                                <p class="yesr_com">제 8회 세계관광의날 국무총리상 수상</p>
                            </li>
                        </ul>
                    </div>
                    <div class="page_aside">
                        <h3 class="aside_tit">1970년대</h3>
                    </div>
                    <div class="year_fr">
                        <ul class="year_lst">
                            <li>
                                <h4 class="year_tit">1979. 03.</h4>
                                <p class="yesr_com">서울 호텔新羅 전관 개관</p>
                            </li>
                            <li>
                                <h4 class="year_tit">1973. 02.</h4>
                                <p class="yesr_com">삼성그룹내 호텔사업부 창설</p>
                            </li>
                            <li>
                                <h4 class="year_tit">1973. 05.</h4>
                                <p class="yesr_com">주식회사 임페리얼로 회사 설립</p>
                            </li>
                        </ul>
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