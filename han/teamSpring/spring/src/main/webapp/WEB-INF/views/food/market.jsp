<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
      <div class="top_wrap"><img src="./image-sub/sub-market.jpg" alt="헤드이미지"></div>
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
          <a href="">홈</a><a href="page1.html">숙박/음식점</a><span>전통시장</span>
        </p>
      </div>
      <h3 class="contents_title">속초 중앙시장 </h3>
      <br>
      <hr class="contents_hr">
        <div class="market_table">
          <img src="./image-sub/market1.jpg" alt="중앙시장">
            <div id="text1">
                  <ul>1. 속초 중앙시장은 가득합니다.</ul>
                  <li> 동해안의 싱싱한 수산물과 특산물 등으로 넘쳐납니다. </li>
                  <li>속초, 고성 여행에 꼭 가봐야하는 필수 관광지, 속초 중앙시장으로 초대합니다.</li>
                  <li>2. 온갖 먹거리가 가득한 명소</li>
                  <p>오징어순대, 아바이순대 그리고 속초의 인기절정인 닭강정까지. 속초중앙시장에는 동해의 맛집 명소로 매우 유명합니다. </p>
  			</div>
        </div>
        <hr class="contents_hr">
        <div class="table2">
          <h4 class="contents_title"> 주요특징 </h4>
          <br>
          <p>속초에 자리한 스테이 호스텔에서는 전용 욕실, 에어컨이 완비된 객실을 이용하실 수 있습니다.  </p>
           <p> 숙소는 등대 해변에서 13분 거리, 속초해수욕장에서 2.1km 거리에 있습니다.   </p>
           <p> 또한 숙소는 설악워터피아에서 7.3km, 속초문화회관에서 13분 거리에 위치해있습니다. </p>
           <p> 이 숙소에서는 금연실 이용이 가능하며 속초시장, 동명항, 터미널, 아바이마을 등 모두 걸어서 5분거리에 있습니다. </p>
        </div>
        <hr class="contents_hr">
        <div class="map">
          <h4 class="contents_title">위치 정보</h4>
            <div class="map_contents">
          <!--구글 지도-->
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3135.232742677688!2d128.5876332115204!3d38.20449287176301!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x5fd8bc7719944521%3A0x1957812eaa1ab20c!2z7KSR7JWZ7Iuc7J6l!5e0!3m2!1sko!2skr!4v1716132919126!5m2!1sko!2skr" 
            width="900" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
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