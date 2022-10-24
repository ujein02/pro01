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

    .page_title { padding-top: 1em; height: 50px; border-bottom:3px solid rgb(198, 180, 142) }
    .ir_fr {width: 1200px; white-space: pre-wrap; margin: 0px auto; }
    .con_img {display: block; }
    .ir_fr h4, .ir_fr p{clear: both; color:rgb(111, 109, 109);}
    .ir_fr p{font-size: 13px; line-height: 0.5px;}

    .ir_lst {  width:1200px; float:left; padding-top: 20px; }
    .ir_lst li { clear:both; height:32px; border-bottom:1px solid #333; box-sizing:border-box; }
    .ir_lst li:first-child { border-top:2px solid #333; }
    .ir_lst li:last-child { border-bottom:2px solid #333; }
    .ir_lst li span { display:block; box-sizing:border-box; float:left; line-height: 32px; font-size:14px; }
    .ir_num { width: 100px; text-align:center; }
    .ir_tit { width: 900px; overflow:hidden; text-overflow:ellipsis; white-space:nowrap; }
    .ir_date { width: 200px; text-align:center; }
    .con_hd { font-weight:600; background-color: rgb(196, 193, 193);}
    .ir_tit.con_hd { text-align: center; }
    .ir_tit a { display: block; overflow:hidden; text-overflow:ellipsis; white-space:nowrap; padding-right: 12px; color:#333; }
    
    .ir_num1 { width: 100px; text-align:center; }
    .ir_com { width: 100px; text-align:center; }
    .ir_tit1 { width: 700px; overflow:hidden; text-overflow:ellipsis; white-space:nowrap; }
    .ir_sub { width: 200px; text-align:center; overflow:hidden; text-overflow:ellipsis; white-space:nowrap; }
    .ir_date1 { width: 100px; text-align:center; }
    .ir_tit1.con_hd { text-align: center; }
    .ir_tit1 a { display: block; overflow:hidden; text-overflow:ellipsis; white-space:nowrap; padding-right: 12px; color:#333; }

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
                        <option>Investor Relations</option>
                        <option value="company.jsp#page1">About Company</option>
                        <option value="hotel.jsp#page1">호텔신라</option>
                        <option value="rewards.jsp#page1">신라리워즈</option>
                        <option value="area.jsp#page1">Business Area</option>
                    </select> &gt; 
                    <select name="sel2" id="sel2" class="sel">
                        <option>공시정보</option>
                        <option value="ir.jsp#page2">지배구조</option>
                        <option value="ir.jsp#page3">IR자료실</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">공시정보</h2>
                    <ul class="ir_lst">
                        <li>
                            <span class="ir_num1 con_hd">번호</span>
                            <span class="ir_com con_hd">공시대상회사</span>
                            <span class="ir_tit1 con_hd">제목</span>
                            <span class="ir_sub con_hd">제출인</span>
                            <span class="ir_date1 con_hd">접수일자</span>
                        </li>
                        <li>
                            <span class="ir_num1">1</span>
                            <span class="ir_com">호텔신라</span>
                            <span class="ir_tit1"><a href="">주식등의대량보유상황보고서(약식)</a></span>
                            <span class="ir_sub">국민연금공단</span>
                            <span class="ir_date1">2022.10.06</span>
                        </li>
                        <li>
                            <span class="ir_num1">2</span>
                            <span class="ir_com">호텔신라</span>
                            <span class="ir_tit1"><a href="">기업설명회(IR)개최(안내공시)</a></span>
                            <span class="ir_sub">호텔신라</span>
                            <span class="ir_date1">2022.09.15</span>
                        </li>
                        <li>
                            <span class="ir_num1">3</span>
                            <span class="ir_com">호텔신라</span>
                            <span class="ir_tit1"><a href="">대규모기업집단현황공시[분기별공시(개별회사용)]</a></span>
                            <span class="ir_sub">호텔신라</span>
                            <span class="ir_date1">2022.08.31</span>
                        </li>
                        <li>
                            <span class="ir_num1">4</span>
                            <span class="ir_com">호텔신라</span>
                            <span class="ir_tit1"><a href="">반기보고서 (2022.06)</a></span>
                            <span class="ir_sub">호텔신라</span>
                            <span class="ir_date1">2022.08.16</span>
                        </li>
                        <li>
                            <span class="ir_num1">5</span>
                            <span class="ir_com">호텔신라</span>
                            <span class="ir_tit1"><a href="">기업설명회(IR)개최(안내공시)</a></span>
                            <span class="ir_sub">호텔신라</span>
                            <span class="ir_date1">2022.08.16</span>
                        </li>
                        <li>
                            <span class="ir_num1">6</span>
                            <span class="ir_com">호텔신라</span>
                            <span class="ir_tit1"><a href="">연결재무제표기준영업(잠정)실적(공정공시)</a></span>
                            <span class="ir_sub">호텔신라</span>
                            <span class="ir_date1">2022.07.29</span>
                        </li>
                        <li>
                            <span class="ir_num1">7</span>
                            <span class="ir_com">호텔신라</span>
                            <span class="ir_tit1"><a href="">결산실적공시예고(안내공시)</a></span>
                            <span class="ir_sub">호텔신라</span>
                            <span class="ir_date1">2022.07.26</span>
                        </li>
                        <li>
                            <span class="ir_num1">8</span>
                            <span class="ir_com">호텔신라</span>
                            <span class="ir_tit1"><a href="">기업설명회(IR)개최(안내공시)</a></span>
                            <span class="ir_sub">호텔신라</span>
                            <span class="ir_date1">2022.06.22</span>
                        </li>
                        <li>
                            <span class="ir_num1">9</span>
                            <span class="ir_com">호텔신라</span>
                            <span class="ir_tit1"><a href="">기업설명회(IR)개최(안내공시)</a></span>
                            <span class="ir_sub">호텔신라</span>
                            <span class="ir_date1">2022.06.14</span>
                        </li>
                        <li>
                            <span class="ir_num1">10</span>
                            <span class="ir_com">호텔신라</span>
                            <span class="ir_tit1"><a href="">주식등의대량보유상황보고서(약식)</a></span>
                            <span class="ir_sub">BlackRock Fund Advisors</span>
                            <span class="ir_date1">2022.06.07</span>
                        </li>
                        <li>
                            <span class="ir_num1">11</span>
                            <span class="ir_com">호텔신라</span>
                            <span class="ir_tit1"><a href="">기업설명회(IR)개최(안내공시)</a></span>
                            <span class="ir_sub">호텔신라</span>
                            <span class="ir_date1">2022.06.03</span>
                        </li>
                        <li>
                            <span class="ir_num1">12</span>
                            <span class="ir_com">호텔신라</span>
                            <span class="ir_tit1"><a href="">기업지배구조보고서공시</a></span>
                            <span class="ir_sub">호텔신라</span>
                            <span class="ir_date1">2022.05.31</span>
                        </li>
                        <li>
                            <span class="ir_num1">13</span>
                            <span class="ir_com">호텔신라</span>
                            <span class="ir_tit1"><a href="">대규모기업집단현황공시[연1회공시및1/4분기용(개별회사)]</a></span>
                            <span class="ir_sub">호텔신라</span>
                            <span class="ir_date1">2022.05.31</span>
                        </li>
                        <li>
                            <span class="ir_num1">14</span>
                            <span class="ir_com">호텔신라</span>
                            <span class="ir_tit1"><a href="">기업설명회(IR)개최(안내공시)</a></span>
                            <span class="ir_sub">호텔신라</span>
                            <span class="ir_date1">2022.05.27</span>
                        </li>
                        <li>
                            <span class="ir_num1">15</span>
                            <span class="ir_com">호텔신라</span>
                            <span class="ir_tit1"><a href="">분기보고서 (2022.03)</a></span>
                            <span class="ir_sub">호텔신라</span>
                            <span class="ir_date1">2022.05.16</span>
                        </li>
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
                        <option>Investor Relations</option>
                        <option value="company.jsp#page1">About Company</option>
                        <option value="hotel.jsp#page1">호텔신라</option>
                        <option value="rewards.jsp#page1">신라리워즈</option>
                        <option value="area.jsp#page1">Business Area</option>
                    </select> &gt; 
                    <select name="sel4" id="sel4" class="sel">
                        <option selected>지배구조</option>
                        <option value="ir.jsp#page1">공시정보</option>
                        <option value="ir.jsp#page3">IR자료실</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">지배구조</h2>
                    <div class="ir_fr">
                        <h4>지배구조의 원칙 및 정책</h4>
                        <p>주식회사 호텔신라는 한국을 대표하는 서비스 유통기업이자 호스피탈리티(Hospitality) 업계의 리더로서 최고의 고객 만족 실현, 국가와 사회에 대한 성실한 기여, 주주 가치 극대화를 기업의 운영원칙으로</p>
                        <p>두고 바르고 정직한 기업경영을 실천하고 있습니다.</p>
                        <p>이에 따라 당사는 회사의 성장과 더불어 주주·이해관계자의 이익 보호와 사회적 책임을 다하기 위해 기업경영의 근간이 되는 지배구조를 명확한 원칙에 따라 적법하고 투명하게 구성하여 운영하고 있습니다.
                        </p>
                        <h4>지배구조의 특징</h4>
                        <p>- 이사회의 독립성, 투명성 강화</p>
                        <p>- 이사회 권한의 효율적 운영을 통한 경영환경 대응력 제고</p>
                        <p>ㆍ 전문성을 갖춘 산하 5개 위원회 운영</p>
                        <p>  (경영위원회, 감사위원회, 사외이사후보추천위원회, 내부거래위원회, 보상위원회)</p>
                        <p>- 이사회의 경영진에 대한 견제 및 보완 역할 확대</p>
                        <h4>지배구조 현황</h4>    
                        <figure class=""></figure>
                        <img src="./img/ir1.jpg" alt="이미지" class="con_img"><br><br>
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
                        <option>Investor Relations</option>
                        <option value="company.jsp#page1">About Company</option>
                        <option value="hotel.jsp#page1">호텔신라</option>
                        <option value="rewards.jsp#page1">신라리워즈</option>
                        <option value="area.jsp#page1">Business Area</option>
                    </select> &gt; 
                    <select name="sel6" id="sel6" class="sel">
                        <option selected>IR자료실</option>
                        <option value="ir.jsp#page1">공시정보</option>
                        <option value="ir.jsp#page2">지배구조</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">IR자료실</h2>
                    <ul class="ir_lst">
                        <li>
                            <span class="ir_num con_hd">번호</span>
                            <span class="ir_tit con_hd">제목</span>
                            <span class="ir_date con_hd">등록일</span>
                        </li>
                        <li>
                            <span class="ir_num">136</span>
                            <span class="ir_tit"><a href="">21년 환경관련 주요내용</a></span>
                            <span class="ir_date">2022-09-08</span>
                        </li>
                        <li>
                            <span class="ir_num">135</span>
                            <span class="ir_tit"><a href="">21년 산업재해율</a></span>
                            <span class="ir_date">2022-09-07</span>
                        </li>
                        <li>
                            <span class="ir_num">134</span>
                            <span class="ir_tit"><a href="">21년 근로자 다양성 정보</a></span>
                            <span class="ir_date">2022-09-07</span>
                        </li>
                        <li>
                            <span class="ir_num">133</span>
                            <span class="ir_tit"><a href="">21년 관리자 이상 직급별 여성 임직원 비율</a></span>
                            <span class="ir_date">2022-09-07</span>
                        </li>
                        <li>
                            <span class="ir_num">132</span>
                            <span class="ir_tit"><a href="">21년 자료</a></span>
                            <span class="ir_date">2022-09-07</span>
                        </li>
                        <li>
                            <span class="ir_num">131</span>
                            <span class="ir_tit"><a href="">근로자 고용 형태별 현황</a></span>
                            <span class="ir_date">2022-09-07</span>
                        </li>
                        <li>
                            <span class="ir_num">130</span>
                            <span class="ir_tit"><a href="">2Q 2022 Business Performance</a></span>
                            <span class="ir_date">2022-07-29</span>
                        </li>
                        <li>
                            <span class="ir_num">129</span>
                            <span class="ir_tit"><a href="">2022년 2/4분기 경영실적 자료</a></span>
                            <span class="ir_date">2022-07-29</span>
                        </li>
                        <li>
                            <span class="ir_num">128</span>
                            <span class="ir_tit"><a href="">제49기 정기주주총회 의결권행사 및 안건찬반현황</a></span>
                            <span class="ir_date">2022-07-28</span>
                        </li>
                        <li>
                            <span class="ir_num">127</span>
                            <span class="ir_tit"><a href="">이사회 및 위원회 설치 현황</a></span>
                            <span class="ir_date">2022-07-25</span>
                        </li>
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