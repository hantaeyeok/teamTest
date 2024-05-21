<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="hpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./subfoodhotel.css">
</head>
<body>
  <div class="layout">
    <header>header
      <div class="top_wrap"><img src="./img/img6.jpg" alt="헤드이미지"></div>
    </header>
    <aside>aside
      <nav id="side">
        <ul class="menu">
            <li>
                <a href="" class="dp1">관광명소</a>
                <ul class="sub">
                    <li><a href="" class="dp2">산림</a></li>
                    <li><a href="" class="dp2">해안</a></li>
                    <li><a href="" class="dp2">놀거리</a></li>
                    <li><a href="" class="dp2">볼거리</a></li>
                </ul>
            </li>
            <li>
                <a href="" class="dp1">문화/예술</a>
                <ul class="sub">
                    <li><a href="" class="dp2">문화재</a></li>
                    <li><a href="" class="dp2">박물관/전시</a></li>
                    <li><a href="" class="dp2">이달의공연</a></li>
                    <li><a href="" class="dp2">추가할거있음</a></li>
                </ul>
            </li>
            <li>
                <a href="./" class="dp1">숙박/음식점</a>
                <ul class="sub">
                    <li><a href="" class="dp2">먹거리</a></li>
                    <li><a href="" class="dp2">전통시장</a></li>
                    <li><a href="" class="dp2">숙박정보</a></li>
                </ul>
            </li>
        </ul>
      </nav>
    </aside>
    <main>
      <div class="breadcrumb">
        <p>
          <a href="">홈</a><span><a href="page1.html">숙박/음식점</a></span><span><a href="page3.html">숙박정보</a></span><span>상세보기</span>
        </p>
      </div>
      <h3 class="contents_title">썬라이즈 호텔 </h3>
      <br>
      <hr class="contents_hr">
        <div class="explain_table">
          <img src="./image-hotel/sunrisehotel.jpg" alt="썬라이즈 호텔">
            <table class="table1">
              <tbody>
                <tr>
                  <th>분 류</th>
                  <td> 호텔 </td>
                </tr>
                <tr>
                  <th>규모</th>
                  <td>438실 규모 
                     </td>
                </tr>
                <tr>
                  <th>개관일</th>
                  <td>2019.11.18</td>
                </tr>
                <tr>
                  <th>소재지</th>
                  <td>강원도 속초시 청초호반로 291</td>
                </tr>
                <tr>
                  <th>연락처</th>
                  <td>033-800-8888</td>
                </tr>
                <tr>
                  <th>시설사용요금</th>
                  <td><a href="http://sunrisehotel.co.kr/" alt="홈페이지" target="_blank">홈페이지 참조</a></td>
                </tr>
              </tbody>
            </table>
        </div>
        <hr class="contents_hr">
        <div class="table2">
          <h4 class="contents_title"> 주요특징 </h4>
          <br>
          <p>속초에 자리한 썬라이즈 호텔 속초에서 머물러보세요.  </p>
           <p> 숙소는 설악워터피아에서 5.8km, 속초문화회관에서 2.4km 거리에 있습니다.  </p>
           <p> 숙소는 속초해수욕장에서 2.9km, 등대 해변에서 3km, 대포항에서 5.5km 거리에 있습니다. </p>
           <p> 레스토랑에서 미국식 요리를 즐길 수 있으며, 무료 전용 주차장을 이용하실 수 있습니다. </p>
        </div>
        <hr class="contents_hr">
        <div class="map">
          <h4 class="contents_title">위치 정보</h4>
            <div class="map_contents">
          <!--구글 지도-->
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d671.9406071793578!2d128.58866257657!3d38.20170290301279!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x5fd8bb7f8073d671%3A0x8578175664ce05cb!2z7I2s65287J207KaI7Zi47YWUIOyGjey0iA!5e0!3m2!1sko!2skr!4v1716121933065!5m2!1sko!2skr" 
            width="800" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
          </div>
        </div>
        <hr class="contents_hr">
      </main>
      <footer>        
        <br>
        <hr>
        <div class="fc_wrap" >
          <nav class="foot_menu">
            <ul>
              <li><a href="">회원약관</a></li>
              <li><a href="">개인정보처리방침</a></li>
              <li><a href="">오시는길</a></li>
            </ul>
          </nav>
          <div class="copyright">
            <p class="addr"> [24826] 강원특별자치도 속초시 중앙로 183 속초시문화관광, 대표전화 : 033-639-2114 | FAX : 033-639-2330(평일 주간/야간 당직실, 공휴일)</p>
            <p class="copy">Copyright © Sokchosockchock All Rights Reserved.</p>
          </div>
          <div class="drop">
            <select name="sel" id="sel" onchange="locate()">
              <option value="">해당 관광서</option>
              <option value="https://www.sokcho.go.kr/">속초시청</option>
              <option value="https://www.sokchotour.com/tour">그곳속초(속초관광)</option>
              <option value="http://sokchocf.or.kr/sokchocf">속초문화관광재단</option>
            </select>
          </div>
          <script>
            function locate(){
              var sel = document.getElementById("sel");
              if(sel.value!=""){
                  window.open(sel.value);
              }
            }
          </script>
          </div>    
      </footer><a href =""><img src="./img/footerlogo.png" alt="속초속촉로고"  class="logo"> </a>
      </div>
</body>
</html>