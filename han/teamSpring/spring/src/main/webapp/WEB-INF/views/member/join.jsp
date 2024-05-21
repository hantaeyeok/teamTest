<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
        <style>
        * { margin: 0; padding: 0; }
        body { width:100%; height: auto; } 
        .headerimg{width: 1930px; height: 600px; background-image:url(${path}/resources/img/login.png);
        margin: 0px auto;
        background-size: cover; /* Ensure the image covers the entire header */
        background-position: center; /* Center the image */
        background-repeat: no-repeat; /* Prevent the image from repeating */}
        .join_contents{width: 1290px; height: auto; margin: 0 auto; }
        .join_wrap{width: 800px; height: 1050px; margin: 2rem auto; }
        .join_wrap h1{margin-top: 2rem; text-align: center;}
        .input {width: 400px; height: auto; margin: 0px auto; margin-top: 3rem; position: relative;} /* 기존 너비 수정 */
        .join_wrap h3 { color: grey; position: absolute; top: -1.5rem; left: 0; } /* h3 위치 조정 */
        .input input[type="text"] { width: 350px; /* 너비 조절 */height: 40px; /* 높이 조절 */ border: 1px solid gray; border-radius: 3px;
        margin-top: 1rem; padding-left: 1rem;} 
        .input .usergender{ width: 364px; /* 너비 조절 */height: 40px; /* 높이 조절 */ border: 1px solid gray; border-radius: 3px;
        margin-top: 1rem; padding-left: 1rem; color: gray;} 

        .usermonth,.userday {width:118px ; height: 42px; border: 1px solid gray; border-radius: 3px;
        margin-top: 1rem; padding-left:1rem; color: gray;}
        .input.birth input { width: 100px;} /* 생년월일 부분 너비 조절 */
        .input.birth input:last-child { margin-right: 0; } /* 마지막 입력 박스에는 마진 없도록 설정 */

       .input input[type="button"]{width: 150px; height: 40px; position: absolute; top: 16px; right: -130px; }
       .endbtn{position: relative;}
       .endbtn .button1 {width: 150px; height: 40px; position: absolute; left: 200px; top: 40px }  
       .endbtn .button2 {width: 150px; height: 40px; position: absolute; left: 400px; top:40px}   
    </style>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <header>
    <%@ include file="/WEB-INF/views/header.jsp" %> 
    </header>
    <div class="headerimg"></div>
    <div class="join_contents">
        <div class="join_wrap">
            <form name="joinform" id="joinform" action="${path}/member/joinPro.do" method="post" onsubmit="return joinCheck(this)">
                <div class="input id">
                    <h3>아이디</h3>
                    <input type="text" id="id" name="id" class="id" placeholder="아이디" pattern="^[a-z0-9]{5,12}" maxlength="12" required>
                    <input type="button" id="idbtn" class="button" onclick="idCheck()" value="아이디 중복확인">
                    <input type="hidden" name="idck" id="idck" value="no">
                    <c:if test="${empty qid}">
                        <p id="msg" style="padding-left:0.5rem">아직 아이디 중복 체크를 하지 않으셨습니다.</p>
                    </c:if>
                    <c:if test="${not empty qid}">
                        <p id="msg" style="padding-left:0.5rem">아이디 중복 체크 후 수정하였습니다.</p>
                    </c:if>
                </div>
                <div class="input cfpw">
                    <h3>비밀번호</h3>
                    <input type="password" id="pw" name="pw" class="pw" placeholder="비밀번호" required>
                </div>
                <div class="input cfpw">
                    <h3>비밀번호확인</h3>
                    <input type="password" id="usercfpw" name="usercfpw" class="usercfpw" placeholder="비밀번호확인" required>
                </div>
                <div class="input name">
                    <h3>이름</h3>
                    <input type="text" id="name" name="name" class="name" placeholder="이름" required>
                </div>
                <div class="input birth">
                    <h3>생년월일</h3>
                    <input type="text" id="year" name="year" class="year" placeholder="년(4자)" required>
                    <select class="usermonth" id="month" name="month" required>
                        <option value="">월</option>
                        <option value="01">1월</option>
                        <option value="02">2월</option>
                        <option value="03">3월</option>
                        <option value="04">4월</option>
                        <option value="05">5월</option>
                        <option value="06">6월</option>
                        <option value="07">7월</option>
                        <option value="08">8월</option>
                        <option value="09">9월</option>
                        <option value="10">10월</option>
                        <option value="11">11월</option>
                        <option value="12">12월</option>
                    </select>
                    <select class="userday" id="day" name="day" required>
                        <option value="">일</option>
                        <option value="01">1일</option>
                        <option value="02">2일</option>
                        <option value="03">3일</option>
                        <option value="04">4일</option>
                        <option value="05">5일</option>
                        <option value="06">6일</option>
                        <option value="07">7일</option>
                        <option value="08">8일</option>
                        <option value="09">9일</option>
                        <option value="10">10일</option>
                        <option value="11">11일</option>
                        <option value="12">12일</option>
                        <option value="13">13일</option>
                        <option value="14">14일</option>
                        <option value="15">15일</option>
                        <option value="16">16일</option>
                        <option value="17">17일</option>
                        <option value="18">18일</option>
                        <option value="19">19일</option>
                        <option value="20">20일</option>
                        <option value="21">21일</option>
                        <option value="22">22일</option>
                        <option value="23">23일</option>
                        <option value="24">24일</option>
                        <option value="25">25일</option>
                        <option value="26">26일</option>
                        <option value="27">27일</option>
                        <option value="28">28일</option>
                        <option value="29">29일</option>
                        <option value="30">30일</option>
                        <option value="31">31일</option>
                    </select>
                </div>
                <div class="input gender">
                    <h3>성별</h3>
                    <select class="usergender" id="gender" name="gender" required>
                        <option value="">선택하세요</option>
                        <option value="남">남</option>
                        <option value="여">여</option>
                    </select>
                </div>
                <div class="input addr">
                    <h3>자택주소</h3>
                    <input type="text" id="postcode" name="postcode" class="postcode" placeholder="우편번호" readonly required>
                    <input type="button" id="pcodebtn" class="button" onclick="execDaumPostcode()" value="우편번호 찾기">
                    <input type="text" id="addr" name="addr" class="addr" placeholder="주소" readonly required>
                </div>
                <input type="submit" class="submit success button" value="회원 가입">
                <input type="reset" class="reset button" value="취소">
            </form>
        </div>
    </div>
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
        function execDaumPostcode() {
            new daum.Postcode({
                oncomplete: function(data) {
                    var addr = '';
                    var extraAddr = '';
                    if (data.userSelectedType === 'R') {
                        addr = data.roadAddress;
                    } else {
                        addr = data.jibunAddress;
                    }
                    if (data.userSelectedType === 'R') {
                        if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                            extraAddr += data.bname;
                        }
                        if (data.buildingName !== '' && data.apartment === 'Y') {
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        if (extraAddr !== '') {
                            extraAddr = ' (' + extraAddr + ')';
                        }
                    } else {
                        document.getElementById("addr").value = '';
                    }
                    document.getElementById('postcode').value = data.zonecode;
                    document.getElementById("addr").value = addr + extraAddr;
                }
            }).open();
        }

        function idCheck() {
            if ($("#id").val() == "") {
                alert("아이디를 입력하지 않으셨습니다.");
                $("#id").focus();
                return;
            }
            var params = { id: $("#id").val() }
            $.ajax({
                url: "${path}/member/idCheck.do",
                type: "post",
                dataType: "json",
                data: params,
                success: function(result) {
                    console.log(result.result);
                    var idChk = result.result;
                    if (idChk == false) {
                        $("#idck").val("no");
                        $("#msg").html("<strong style='color:red'>기존에 사용되고 있는 아이디 입니다. 다시 입력하시기 바랍니다.</strong>");
                        $("#id").focus();
                    } else if (idChk == true) {
                        $("#idck").val("yes");
                        $("#msg").html("<strong style='color:blue'>사용가능한 아이디 입니다.</strong>");
                    } else if (idChk == "") {
                        $("#msg").html("<strong>아이디가 확인되지 않았습니다. 다시 시도해주시기 바랍니다.</strong>");
                    }
                }
            });
        }

        function joinCheck(form) {
            if ($("#idck").val() == "no") {
                alert("아이디 중복 체크를 해주세요.");
                $("#id").focus();
                return false;
            }
            if ($("#pw").val() != $("#usercfpw").val()) {
                alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
                $("#usercfpw").focus();
                return false;
            }
            return true;
        }
    </script>
    <%@ include file="/WEB-INF/views/footer.jsp" %> 
</body>
</html>