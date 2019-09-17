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
<!-- jQuery UI CSS파일 -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<!-- ************************************************************************************************* -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/function.admin.js"></script><!-- # 필수 함수 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/function.default.js"></script><!-- # 필수 함수 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/function.validate.js"></script><!-- # 필수 함수 -->
<link href="https://ajax.googleapis.com/ajax/static/modules/gviz/1.0/core/tooltip.css" rel="stylesheet" type="text/css">
<script>
$(function(){
	
	var ndate = new Date();
	var year = ndate.getFullYear();
	var month = ndate.getMonth()+1;
	var date = ndate.getDate();
	
	month = (month > 10) ? month+"":"0"+month;
	date = (date > 10) ? date+"":"0"+date;
	
	$("#regdate").val(year+"-"+month+"-"+date);
	
	$("#regdate").datepicker({
		changeMonth: true, 
		changeYear: true,
		dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
		dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], 
		monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
		monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		dateFormat: "yy-mm-dd"
    });
	
	//예외처리
	$("#form1").submit(function(){
		var clinic_type = $(".search_sel").val();
		var writer = $(".write_table tr td > input[name='writer']").val();
		var regdate = $(".write_table tr td > input[name='regdate']").val();
		var cnt = $(".write_table tr td > input[name='cnt']").val();
		var title = $(".write_table tr td > input[name='title']").val();
		var content = $(".write_table tr td > textarea[name='content']").val();
		var b_img = $(".write_table tr td > div > input[name='img_before']").val();
		var a_img = $(".write_table tr td > div > input[name='img_after']").val();
		
		
		console.log(clinic_type+"\n"+writer+"\n"+regdate+"\n"+cnt+"\n"+title+"\n"+content+"\n"+b_img+"\n"+a_img);
		
		
		if($("input[name='writer']").val()==""){
			alert("작성자를 입력해주세요.");
			return false;
		}
		if($("input[name='title']").val()==""){
			alert("제목을 입력해주세요.");
			return false;
		}
		//return false;
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
				<h1>시술전/후사진</h1>

				<ul class="navi_area">
					<li>관리자메인&nbsp;&gt;&nbsp;</li>
					<li>게시판관리&nbsp;&gt;&nbsp;</li>
					<li>시술전/후사진</li>
				</ul>
			</div>
			
			<script src="${pageContext.request.contextPath}/resources/ckeditor/ckeditor.js" type="text/javascript"></script>
			
			<div class="main_bottom_area">
				<form name="board" id="form1" method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/admin/menu01_02register">
					<input type="hidden" name="no" value="0">
					<input type="hidden" name="use_state" value="o">
					<div class="write_area">
						<div class="write_box">
							<table class="write_table" cellpadding="0">
								<colgroup>
									<col width="11%">
									<col width="*">
								</colgroup>
								<tr class="cont">
									<td class="title">분류</td>
									<td>
										<select name="clinic_type" id="b_tap" class="search_sel">
											<option value="동안·탄력 클리닉">동안·탄력 클리닉</option>
											<option value="레이저클리닉">레이저클리닉</option>
											<option value="흉터클리닉">흉터클리닉</option>
											<option value="눈·코 성형">눈·코 성형</option>
											<option value="프리미엄 쁘띠클리닉">프리미엄 쁘띠클리닉</option>
											<option value="체형클리닉">체형클리닉</option>
											<option value="두피클리닉">두피클리닉</option>
										</select>
									</td>
								</tr>
										
								<tr class="cont">
									<td class="title">작성자</td>
									<td>
										<input type="text" class="w_form_s" name="writer" value="다니엘성형외과">
									</td>
								</tr>
								<tr class="cont">
									<td class="title">작성일</td>
									<td>
										<input type="text" id="regdate" class="w_form_s" name="regdate" value="" autocomplete="off">
									</td>
								</tr>
								<tr class="cont">
									<td class="title">조회수</td>
									<td>
										<input type="text" class="w_form_s" name="cnt" value="0">
									</td>
								</tr>
								<tr class="cont">
									<td class="title">제목</td>
									<td>
										<input type="text" class="w_form_l" name="title" value="">
									</td>
								</tr>
								<tr class="cont">
									<td class="title">내용</td>
									<td>
										<textarea id="b_content" name="content"></textarea>
									</td>
								</tr>
								<tr class="cont">
									<td class="title">첨부파일</td>
									<td id="attach">
										<div><input type="file" name="img_before"></div>
										<div class="marginT10"><input type="file" name="img_after"></div>
										<br><strong></strong>
									</td>
								</tr>
							</table>
						</div><!-- write_box end -->
				
						<div class="btn_area">
							<p class="btn_left">
								<button type="button" class="btn_gray" onclick="location.href='${pageContext.request.contextPath}/admin/menu01_02'">리스트</button>
							</p>
							<p class="btn_right">
								<input type="submit" class="btn_black" value="등록">&nbsp;
								<button type="button" class="btn_gray" onclick="location.href='${pageContext.request.contextPath}/admin/menu01_02register'">취소</button>
							</p>
						</div>
					</div><!-- write_area end -->
				</form>
			</div><!-- main_bottom_area end -->
			
			
			<script type="text/javascript">
				$(function(){
					CKEDITOR.replace('b_content', {width:'100%', height:'500px'});
				});
			</script>
			
		</div><!-- admin_right 끝 -->
    </div><!-- container 끝 -->

    <div id="admin_footer">
        <div class="f_contents nanum_n">COPYRIGHT ⓒ <span class="txt_blue_b nanum_b">다니엘성형외과의원 진료과목 피부과</span> ALL RIGHT RESERVED</div>
    </div>
</div><!-- wrap 끝 -->

</body>
</html>