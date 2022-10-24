<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="ft_wrap">
                <div class="ft_logo"><img src="./img/logo_hotel.gif" alt="logo"></div>
                <div class="mid_box">
                    <nav class="fnb">
                        <a href="">개인정보 처리 방침</a>
                        <a href="">이용약관</a>
                        <a href="">이메일무단수집거부</a>
                    </nav>
                    <p class="addr">
                        (주)호텔신라 | 서울특별시 중구 동호로 249 (우:04605) | 대표이사 이부진| 사업자등록번호203-81-43363 | 통신판매업신고번호 중구00272호<br>
                        호스팅서비스제공자 삼성SDS(주) | 서울객실예약 shilla.reserve@samsung.com | 제주객실예약 jejushilla@samsung.com<br>
                    </p>
                    <p class="copyright">COPYRIGHT(C) HOTEL SHILLA CO., LTD. All Right Reserved.</p>
                </div>
                <div class="sel_box">
                    <select name="sel" id="sel" class="sel" onchange="sel_link(this)">
                        <option value="">패밀리 사이트</option>
                        <option value="https://www.shilladfs.com/estore/kr">신라면세점</option>
                        <option value="http://www.theshillashop.com">신라숍</option>
                    </select>
                </div>
                <script>
                function sel_link(sel){
                    location.href = sel.value;
                }
                </script>
            </div>