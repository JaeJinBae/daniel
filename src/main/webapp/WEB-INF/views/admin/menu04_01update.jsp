<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다니엘성형외과의원 진료과목 피부과</title>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico">
<!-- ************************************************************************************************* -->
<!-- @ = 스타일, # = 자바스크립트 -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/style_admin.css"><!-- @1 스타일 초기화		**삭제/수정금지** -->
<!-- ********************************************플러그인********************************************* -->
<script src="${pageContext.request.contextPath}/resources/js/jquery-1.12.4.min.js"></script><!-- #1 1.12.4  -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-ui-1.11.1.js"></script><!-- #jquery UI  -->
<!-- ************************************************************************************************* -->

<!-- ************************************************************************************************* -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/function.admin.js"></script><!-- # 필수 함수 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/function.default.js"></script><!-- # 필수 함수 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/function.validate.js"></script><!-- # 필수 함수 -->
<link href="https://ajax.googleapis.com/ajax/static/modules/gviz/1.0/core/tooltip.css" rel="stylesheet" type="text/css">
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
function delete_user(no){
	
}

function addr_func(){
	new daum.Postcode({
        oncomplete: function(data) {
        	// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('zipcode').value = data.zonecode;
            document.getElementById("addr1").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("addr2").focus();
        }
    }).open();
}
$(function(){
	var phoneList = "${item.phone}".split("-");
	$("#phone1 > option[value='"+phoneList[0]+"']").prop("selected", true);
	$("#phone2").val(phoneList[1]);
	$("#phone3").val(phoneList[2]);
	
	var sex = "${item.gender}";
	$(".gender[value='"+sex+"']").prop("checked", true);
	
	var getMail = "${item.email}".split("@");
	$("#email1").val(getMail[0]);
	$("#email2").val(getMail[1]);
	$("#mailcode > option[value='"+getMail[1]+"']").prop("selected", true);
	
	$("#id_duplicate_chk_btn").click(function(){
		var id=$("#id").val();
		id_chk(id);
		
	});
	
	$("#mailcode").change(function(){
		var codee = $(this).val();
		$("#email2").val(codee);
	});
	
	$("#form1").submit(function(){
		if($("#idchkval").val() == "x"){
			alert("아이디 중복확인을 진행하세요.");
			return false;
		}
		
		if($("#pw").val().length > 1){
			$("#pw_change").val("o");
		}
		
		var phone1 = $("#phone1").val();
		var phone2 = $("#phone2").val();
		var phone3 = $("#phone3").val();
		var phone = phone1+"-"+phone2+"-"+phone3;
		$("#phone").val(phone);
		
		var email1 = $("#email1").val();
		var email2 = $("#email2").val();
		var email = email1+"@"+email2; 
		$("#email").val(email);
		
		var urlArr = $(this).prop("action").split("keyword=");
		var keyword = encodeURIComponent(urlArr[1]);
		var no = $("input[name='no']").val();
		var target = urlArr[0]+"keyword="+keyword+"&no="+no;
		$(this).prop("action", target);
	});
});
</script>
</head>
<body>
<div id="Mask"></div>
<div id="wrap" class="body_main">
	<div id="container">
		<div id="admin_left">
			<jsp:include page="include/leftMenu.jsp"></jsp:include><!-- 왼쪽 메뉴 -->
		</div>

		<div id="admin_right">
			
			<jsp:include page="include/rightTop.jsp"></jsp:include><!-- 오른쪽 상단 -->

			<div class="naviText_area">
				<h1>가입회원</h1>

				<ul class="navi_area">
					<li>관리자메인&nbsp;&gt;&nbsp;</li>
					<li>회원관리&nbsp;&gt;&nbsp;</li>
					<li>가입회원</li>
				</ul>
			</div>
			
			<div class="main_bottom_area">
				<form name="member" id="form1" method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/admin/menu04_01update${pageMaker.makeSearch(pageMaker.cri.page)}">
					<input type="hidden" name="no" value="${item.no}">
					<input type="hidden" name="regdate" id="regdate">
					<div class="write_area">
						<div class="write_box">
							<table class="write_table">
								<colgroup>
									<col width="11%">
									<col width="*">
								</colgroup>
								<tr class="cont">
									<td class="title">아이디</td>
									<td>
										<input type="text" class="w_form_m" name="id" id="id" value="${item.id}">
									</td>
								</tr>
								<tr class="cont">
									<td class="title">사용자명</td>
									<td><input type="text" class="w_form_m" name="name" id="name" value="${item.name}"></td>
								</tr>
								<tr class="cont">
									<td class="title">등급</td>
									<td>
										<select name="lv" id="lv" class="search_sel"><option value="9">일반회원</option></select>
									</td>
								</tr>
								<tr class="cont">
									<td class="title">비밀번호</td>
									<td><input type="password" class="w_form_m" name="pw" id="pw"><input type="hidden" name="pw_change" id="pw_change" value="x"></td>
								</tr>
								<tr class="cont">
									<td class="title">휴대전화</td>
									<td>
										<select name="phone1" id="phone1" class="search_sel">
											<option value="010">010</option>
											<option value="011">011</option>
											<option value="016">016</option>
											<option value="017">017</option>
											<option value="018">018</option>
											<option value="019">019</option>
										</select>-
										<input type="text" class="w_form_s" maxlength="4" id="phone2" name="phone2" value="">-
										<input type="text" class="w_form_s" maxlength="4" id="phone3" name="phone3" value="">
										<input type="hidden" name="phone" id="phone" value="">
									</td>
								</tr>
								<tr class="cont">
									<td class="title">생년월일</td>
									<td>
										<input type="text" class="w_form_s" id="birth" name="birth" value="${item.birth}"> (YYYY-MM-DD)
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</td>
								</tr>
								<tr class="cont">
									<td class="title">성별</td>
									<td>
										<label><i></i><input type="radio" name="gender" class="gender" value="m">남</label>&nbsp;&nbsp;&nbsp;
										<label><i></i><input type="radio" name="gender" class="gender" value="f">여</label>&nbsp;&nbsp;&nbsp;
									</td>
								</tr>
								<tr class="cont">
									<td class="title">주소</td>
									<td>
										<input type="text" class="w_form_s" id="zipcode" name="zipcode" value="" readonly="">
										<button type="button" class="btn_black btn_small" onclick="addr_func()">우편번호찾기</button><br>
										<input type="text" class="w_form_m marginT5" id="addr1" name="addr1" value="" readonly=""><br>
										<input type="text" class="w_form_l marginT5" id="addr2" name="addr2" value="">
									</td>
								</tr>
								<tr class="cont">
									<td class="title">이메일</td>
									<td>
										<input type="hidden" name="email" id="email" value="">
										<input type="text" class="w_form_s" name="email1" id="email1" value=""> @&nbsp;
										<input type="text" class="w_form_s" name="email2" id="email2" value="">
										<select name="emailcode" id="mailcode" class="search_sel">
											<option value="">직접입력</option>
											<option value="naver.com">naver.com</option>
											<option value="daum.net">daum.net</option>
											<option value="gmail.com">gmail.com</option>
											<option value="yahoo.co.kr">yahoo.co.kr</option>
											<option value="yahoo.com">yahoo.com</option>
											<option value="nate.com">nate.com</option>
											<option value="paran.com">paran.com</option>
											<option value="google.com">google.com</option>
											<option value="empas.com">empas.com</option>
											<option value="hotmail.com">hotmail.com</option>
											<option value="msn.com">msn.com</option>
											<option value="korea.com">korea.com</option>
											<option value="dreamwiz.com">dreamwiz.com</option>
											<option value="hanafos.com">hanafos.com</option>
											<option value="freechal.com">freechal.com</option>
											<option value="chol.com">chol.com</option>
											<option value="empal.com">empal.com</option>
											<option value="lycos.com">lycos.com</option>
											<option value="netian.com">netian.com</option>
										</select>
									</td>
								</tr>
							</table>
							
						</div>
				
						<div class="btn_area">
							<p class="btn_left">
								<button type="button" class="btn_gray" onclick="location.href='${pageContext.request.contextPath}/admin/menu04_01'">리스트</button>
							</p>
				
							<p class="btn_right">
								<input type="submit" class="btn_black" value="수정">
								<button type="button" class="btn_gray" onclick="location.href='${pageContext.request.contextPath}/admin/menu04_01withdraw/${item.no}/o'">탈퇴</button>
								<button type="button" class="btn_red" onclick="location.href='${pageContext.request.contextPath}/admin/menu04_01delete/${item.no}'">삭제</button>
								<button type="button" class="btn_gray" onclick="location.href='${pageContext.request.contextPath}/admin/menu04_01'">취소</button>
							</p>
						</div>
				
					</div><!-- write_area end -->
				</form>
			</div><!-- main_bottom_area end -->
			
		</div><!-- admin_right 끝 -->
    </div><!-- container 끝 -->

    <div id="admin_footer">
        <div class="f_contents nanum_n">COPYRIGHT ⓒ <span class="txt_blue_b nanum_b">다니엘성형외과의원 진료과목 피부과</span> ALL RIGHT RESERVED</div>
    </div>
</div><!-- wrap 끝 -->

</body>
</html>