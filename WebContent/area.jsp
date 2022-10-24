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

    .page_title { padding-top: 1em; height: 50px; border-bottom:3px solid rgb(198, 180, 142)  }
    .area_fr, .area_fr1 {width: 1200px; white-space: pre-wrap; margin: 0px auto; }
    .con_img {display: block; float:left; margin: 0 auto;} 
    .con_img1 {display: block; float:right; margin: 0 auto;}   
    .area_fr h4, .area_fr p{ color:rgb(111, 109, 109);} 
    .area_fr p{width: 860px; font-size: 13px; line-height: 1.5em;}
    .area_fr1 h4, .area_fr1 p{clear:both; color:rgb(111, 109, 109);} 
    .area_fr1 p{width: 860px; font-size: 13px; line-height: 1.5em;}

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
                        <option>Business Area</option>
                        <option value="company.jsp#page1">About Company</option>
                        <option value="hotel.jsp#page1">호텔신라</option>
                        <option value="rewards.jsp#page1">신라리워즈</option>
                        <option value="ir.jsp#page1">Investor Relations</option>
                    </select> &gt; 
                    <select name="sel2" id="sel2" class="sel">
                        <option>TR부문</option>
                        <option value="area.jsp#page2">호텔부문</option>
                        <option value="area.jsp#page3">레저부문</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">TR부문</h2>
                    <div class="area_fr">
                        <figure class=""></figure>
                        <img src="./img/tr.gif" alt="이미지" class="con_img">
                        <img src="./img/tr_image.jpg" alt="이미지" class="con_img1"><br><br>
                        <!-- <div class="rewards_con"> -->
                            <p>신라면세점은 명품 부티크를 포함한 패션, 주얼리, 화장품, 시계류, 토산품 등 1,300 여종의 세계 유명 브랜드를 다양하게 구비하고 있으며, 시내면세점뿐만 아니라 인터넷면세점, 공항면세점과 같은 편리한 쇼핑 채널, 대규모 야외 고객 휴게시설과 문화 이벤트 공간 등의 환경을 확보하고 국내∙외 고객에게 최고의 쇼핑 경험과 차별화된 서비스를 제공하고 있습니다.</p>
                            <h4>The Golbal No3. Travel Retailer</h4>
                            <p>신라면세점은 2013년 싱가포르 창이국제공항에 첫 해외 매장 오픈을 시작으로 2014년 마카오공항 면세점 오픈, 2017년 홍콩 첵랍콕국제공항과 2018년 인천국제공항 제2여객터미널 면세점까지 추가 오픈하면서 아시아 3대 허브 공항에서 화장품·향수를 중심으로 한 메인 면세점 매장을 모두 운영하는 세계 유일 면세 사업자로서의 성과를 이뤄냈습니다.</p>
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
                        <option>Business Area</option>
                        <option value="company.jsp#page1">About Company</option>
                        <option value="hotel.jsp#page1">호텔신라</option>
                        <option value="rewards.jsp#page1">신라리워즈</option>
                        <option value="ir.jsp#page1">Investor Relations</option>
                    </select> &gt; 
                    <select name="sel4" id="sel4" class="sel">
                        <option selected>호텔부문</option>
                        <option value="area.jsp#page1">TR부문</option>
                        <option value="area.jsp#page3">레저부문</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">호텔부문</h2>
                    <div class="area_fr1">
                        <figure class=""></figure>
                        <img src="./img/hotel_con1.gif" alt="이미지" class="con_img">
                        <img src="./img/hotel_con2.jpg" alt="이미지" class="con_img1">
                        <h4>A Leading Global Property</h4>
                        <p>LHW의 멤버로 세계 럭셔리 호텔들과 어깨를 나란히 하고 있는 서울신라호텔은 고객 한 분 한 분을 배려하는 기품 있는 서비스로 세계 각국의 수반들과 외교, 경제, 문화 등 다양한 분야의 명사로부터 찬사를 받고 있으며, 권위 있는 해외 매체 Forbes Travel Guide로부터 한국의 첫 5성호텔로 선정된 바 있습니다.</p>
                        <img src="./img/hotel_con3.gif" alt="이미지" class="con_img">
                        <img src="./img/hotel_con4.jpg" alt="이미지" class="con_img1">
                        <h4>A Luxury Resort Property</h4>
                        <p>세계자연문화유산인 제주의 아름다운 풍광을 담은 리조트로서 그 명성을 쌓아가고 있는 제주신라호텔은 1990년 개관부터 지금까지 품격과 문화가 있는 휴식 공간이자 수많은 국제행사를 성공적으로 수행하며 해외 각국의 국가 수반과 많은 VIP들에게 찬사를 받아온 리조트 호텔입니다. 제주신라호텔은 고유의 이국적인 분위기와 시설을 선보이며 세계적 관광명소인 제주특별자치도 호텔 시장의 트렌드를 선도하고 있습니다</p>
                        <img src="./img/hotel_con5.gif" alt="이미지" class="con_img">
                        <img src="./img/hotel_con6.jpg" alt="이미지" class="con_img1">
                        <h4>Upper Upscale Properties</h4>
                        <p>서울과 제주신라호텔의 장점을 그대로 옮겨온 신라모노그램 다낭은 호텔과 레지던스로 구성된 300여개 객실, 총 4개의 식음업장, 4개 온수풀, 레저 전문가 프로그램 등의 시설과 서비스를 제공하며 차별화된 휴양지 경험을 추구하는 국내∙외 여행객을 맞이하고 있습니다. 신라모노그램은 2025년 강릉에 추가 오픈하는 한편, 베트남, 인도네시아, 중국 등 해외 10여 곳에 진출할 계획입니다.</p>
                        <img src="./img/hotel_con7.gif" alt="이미지" class="con_img">
                        <img src="./img/hotel_con8.jpg" alt="이미지" class="con_img1">
                        <h4>Premium Business Properties</h4>
                        <p>특급 호텔 수준의 고급 침구와 어메니티, 감각적 디자인을 살린 객실과 비즈니스 고객의 업무공간으로 활용이 가능한 로비, 고품질의 뷔페 레스토랑과 편안한 라운지&바 등은 신라스테이를 프리미엄 비즈니스 호텔로 차별화시키는 상징입니다. 2013년 동탄을 시작으로 국내 13곳에서 사업을 운영 중인 신라스테이는 미국, 중국, 베트남 등으로 진출하며 성장할 계획입니다.</p>
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
                        <option>Business Area</option>
                        <option value="company.jsp#page1">About Company</option>
                        <option value="hotel.jsp#page1">호텔신라</option>
                        <option value="rewards.jsp#page1">신라리워즈</option>
                        <option value="ir.jsp#page1">Investor Relations</option>
                    </select> &gt; 
                    <select name="sel6" id="sel6" class="sel">
                        <option selected>레저부문</option>
                        <option value="area.jsp#page1">TR부문</option>
                        <option value="area.jsp#page2">호텔부문</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">레저부문</h2>
                    <div class="area_fr">
                        <figure class=""></figure>
                        <img src="./img/leisure1.gif" alt="이미지" class="con_img">
                        <img src="./img/leisure2.jpg" alt="이미지" class="con_img1"><br><br>
                            <br><br><h4>Innovative Fitness & Healthcare Service</h4>
                            <p>1993년 삼성레포츠클럽 운영을 시작으로 2004년 아시아 최대 규모의 피트니스 클럽인 ‘반트(VANTT)’를 운영하는 등 럭셔리 회원제 피트니스클럽의 새로운 패러다임을 열고 있으며, 2014년 CFC(Corporate Fitness Center) 브랜드 ‘드마크(demarq)’를 런칭하여 전국 54개 시설에서 기업 임직원들과 만나고 있습니다.</p>
                            <p>또한 2015년에 운동, 식사, 건진 기록 등을 24시간 모바일 앱으로 손쉽게 관리하는 ‘SHP(Smart Healthcare Pal)’ 건강관리 서비스 개발과 함께 2022년 오프라인 피트니스 기반의 온라인 헬스케어 사업에 진출하며 디지털 신기술을 접목한 혁신을 이끌고 있습니다.</p>
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