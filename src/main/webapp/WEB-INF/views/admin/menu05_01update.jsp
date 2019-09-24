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
<script>
$(function(){
	
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
				<h1>상담관리</h1>

				<ul class="navi_area">
					<li>관리자메인&nbsp;&gt;&nbsp;</li>
					<li>상담관리&nbsp;&gt;&nbsp;</li>
					<li>상담관리</li>
				</ul>
			</div>
			
			<div class="main_bottom_area">
				<form name="inquire" id="inquire" method="post" enctype="multipart/form-data" action="">
					<div class=""><h2 style="font-size:20px;">온라인 상담관리</h2></div>
					<div class="write_area">
						<div class="write_box">
							
							<table class="write_table">
								<colgroup>
									<col width="11%">
									<col width="*">
								</colgroup>
								<tr class="cont">
									<td class="title">상담자</td>
									<td><input type="text" class="w_form_s" name="name" id="name" value="${item.name}"></td>
								</tr>
								<tr class="cont">
									<td class="title">휴대전화</td>
									<td><input type="text" class="w_form_m" name="phone" id="phone" value="${item.phone}" maxlength="13"></td>
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
								<tr class="cont">
									<td class="title">처리상태</td>
									<td>
										<select name="state" id="state" class="search_sel">
											<option value="상담예정">상담예정</option>
											<option value="상담진행">상담진행</option>
											<option value="상담완료">상담완료</option>
											<option value="기타">기타</option>
										</select>
									</td>
								</tr>
								<tr class="cont">
									<td class="title">비밀글</td>
									<td>
										<label for="secret1"><i></i><input type="radio" name="secret" id="secret" value="o">예</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label for="secret2"><i></i><input type="radio" name="secret" id="secret" value="x">아니오</label>&nbsp;&nbsp;&nbsp;&nbsp;
									</td>
								</tr>
								<tr class="cont">
									<td class="title">제목</td>
									<td><input type="text" class="w_form_l" name="i_title" id="i_title" value="${item.title}"></td>
								</tr>
								<tr class="cont">
									<td class="title">문의내용</td>
									<td>
										<textarea name="i_content" id="i_content" cols="120" rows="8" class="w_form_txtArea">
											${item.content}
										</textarea>
									</td>
								</tr>
								<tr class="cont">
									<td class="title">상담내용</td>
									<td>
										<textarea name="i_answer" id="i_answer" cols="120" rows="8" class="w_form_txtArea">
											${item.reply}
										</textarea>
									</td>
								</tr>
								<tr class="cont">
									<td class="title">메모</td>
									<td><textarea name="i_memo" id="i_memo" cols="120" rows="8" class="w_form_txtArea">${item.memo}</textarea></td>
								</tr>
								<tr class="cont">
									<td class="title">IP</td>
									<td>${item.ip}</td>
								</tr>
								<tr class="cont">
									<td class="title">유입경로</td>
									<td>${item.access_url}</td>
								</tr>
								<tr class="cont">
									<td class="title">답변일</td>
									<td>${item.reply_date}</td>
								</tr>
							
								<tr class="cont">
									<td class="title">첨부파일</td>
									<td>
										<input type="hidden" id="uploadState" name="uploadState" value="x">
										<c:choose>
											<c:when test="${item.upload_origin == ''}">
												<div><input type="file" name="upload_origin"></div>
											</c:when>
											<c:otherwise>
												<div>
													<a href="">${item.upload_origin}</a>
													<img id="upload" src="${pageContext.request.contextPath}/resources/img/admin/icon_x.png" class="vimg cursor">
													<input type="hidden" name="upload_origin" value="${item.upload_origin}">
												</div>
											</c:otherwise>
										</c:choose>
									</td>
								</tr>
							</table>
							
						</div>
				
						<div class="btn_area">
							<p class="btn_left">
								<button type="button" class="btn_gray" onclick="location.href='${pageContext.request.contextPath}/admin/menu05_01'">리스트</button>
							</p>
				
							<p class="btn_right">
								<button type="button" class="btn_black" onclick="">수정</button>
				
								<button type="button" class="btn_red" onclick="">삭제</button>
								<button type="button" class="btn_gray" onclick="">취소</button>
							</p>
						</div>
					</div>
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