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
<script src="${pageContext.request.contextPath}/resources/js/function.calendar.js"></script><!-- 달력  -->
<!-- ************************************************************************************************* -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/function.admin.js"></script><!-- # 필수 함수 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/function.default.js"></script><!-- # 필수 함수 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/function.validate.js"></script><!-- # 필수 함수 -->
<link href="https://ajax.googleapis.com/ajax/static/modules/gviz/1.0/core/tooltip.css" rel="stylesheet" type="text/css">
<script>
$(function(){
	$(function(){
		$.ajaxSetup({cache:false});
	})
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
				<h1>자필후기</h1>

				<ul class="navi_area">
					<li>관리자메인&nbsp;&gt;&nbsp;</li>
					<li>게시판관리&nbsp;&gt;&nbsp;</li>
					<li>자필후기</li>
				</ul>
			</div>
			
			<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin/cropper.css">
			<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.cropper.js"></script>
			<script src="${pageContext.request.contextPath}/resources/ckeditor/ckeditor.js" type="text/javascript"></script>
			
			<div class="main_bottom_area">
				<div class="write_area">
					<div class="write_box">
			
						<form name="board" id="board" method="post" enctype="multipart/form-data" action="board_proc.php">
							<input type="hidden" name="data_array" value="Y">
							<input type="hidden" name="mode" value="modify">
							<input type="hidden" name="seq" value="2102">
							<input type="hidden" name="search" value="">
							<input type="hidden" name="select_key" value="">
							<input type="hidden" name="input_key" value="">
							<input type="hidden" name="page" value="1">
							<input type="hidden" name="pseq" value="">
							<input type="hidden" name="Scod" value="BRD22">
							<input type="hidden" name="radio_key" value="">
							<input type="hidden" name="Sfle" value="0">
			
							<table class="write_table" cellpadding="0">
								<colgroup>
									<col width="11%">
									<col width="*">
								</colgroup>
			
								
								<tr class="cont">
									<td class="title">작성자</td>
									<td>
										<input type="text" class="w_form_s" name="m_name" value="theweb" valid="required" element-name="작성자">
									</td>
								</tr>
								<tr class="cont">
									<td class="title">작성일</td>
									<td>
										<input type="text" class="w_form_s" name="b_regdate" value="2019-07-15" readonly="">
										<button type="button" class="btn_black btn_small" onclick="jCal('b_regdate')">달력</button>
									</td>
								</tr>
								<tr class="cont">
									<td class="title">조회수</td>
									<td>
										<input type="text" class="w_form_s" name="b_readcnt" value="22" valid="none,number" element-name="조회수">
									</td>
								</tr>
			
			
								<tr class="cont">
									<td class="title">제목</td>
									<td>
										<input type="text" class="w_form_l" name="b_title" value="[자필후기] 여드름과 여드름흉터, 주근깨 치료 후기입니다." onkeypress="fnChkRemark(this, '120')" onkeyup="fnChkRemark(this, '120')" valid="required" element-name="제목">
									</td>
								</tr>
								<tr class="cont"> 
									<td class="title">내용</td>
									<td>
										<textarea id="b_content" name="b_content" valid="editor-b_content" element-name="내용" style="visibility: hidden; display: none;">&lt;div style="text-align: center;"&gt;&lt;img alt="" src="/filedata/ckeditor/20190715_DA347AA472B0F61F.jpg" /&gt;&lt;/div&gt;</textarea>
									</td>
								</tr>			
								<tr class="cont" id="tr_crop_image" style="display:none">
									<td colspan="2">
										<div class="edit-set">
											<p class="btn-set">
												<button type="button" class="btn_gray btn_small" onclick="vboard_it('reset')">초기화</button>
												<!-- <button type="button" class="btn_gray btn_small" onClick="vboard_it('rotate', 'plus')">회전+</button>
												<button type="button" class="btn_gray btn_small" onClick="vboard_it('rotate', 'minus')">회전-</button> -->
												<button type="button" class="btn_black btn_small" onclick="vboard_it('submit')">적용</button>
												<button type="button" class="btn_gray btn_small" onclick="vboard_it('close')">닫기</button>
											</p>
											<p class="resizing">
												가로크기 : <span id="n_width">0</span> * 세로크기 : <span id="n_height">0</span>
											</p>
										</div>
										<div id="crop_image"></div>
									</td>
								</tr>
			
							</table>
						</form>
					</div>
			
					<br><div id="comment"><!-- 댓글 --></div><br>
			
					<div class="btn_area">
						<p class="btn_left">
							<button type="button" class="btn_gray" onclick="">리스트</button>
						</p>
			
						<p class="btn_right">
			
							<button type="button" class="btn_gray" onclick="">답변</button>&nbsp;<button type="button" class="btn_black" onclick="board_it('submit')">수정</button>&nbsp;<button type="button" class="btn_red" onclick="board_it('each_delete', 'select_key=&amp;input_key=&amp;search=&amp;Scod=BRD22&amp;sort=b_notice ASC, b_ref DESC, b_step ASC, seq DESC&amp;page=1&amp;radio_key=&amp;seq=2102')">삭제</button>
							<button type="button" class="btn_gray" onclick="">취소</button>
						</p>
					</div>
			
				</div>
			</div>
			<!-- main_bottom_area -->
			
			<form id="board_crop" name="board_crop" method="post">
				<input type="hidden" id="seq" name="seq">
				<input type="hidden" id="dataX" name="dataX">
				<input type="hidden" id="dataY" name="dataY">
				<input type="hidden" id="dataWidth" name="dataWidth">
				<input type="hidden" id="dataHeight" name="dataHeight">
				<input type="hidden" id="dataRotate" name="dataRotate">
				<input type="hidden" id="dataScaleX" name="dataScaleX">
				<input type="hidden" id="dataScaleY" name="dataScaleY">
				<input type="hidden" name="mode" value="crop_image">
			</form>
			
			<script type="text/javascript">
				$(function(){
					CKEDITOR.replace('b_content', {width:'100%', height:'300px'});
			
					var $Scmt = "N",
						$mode = "insert",
						$reload = "";
			
					if( ($Scmt == "Y") && ($mode == "modify") )	vboard_it('comment', 'Scod=BRD21&b_seq=');
					if($reload)		board_it('image_modify', $reload);
				});
			
				var $index = $(".attach").size();
			
				function vboard_it($mode, $param){
					if($mode == "comment"){
						$param = ($param == undefined) ? "" : $param;
			
						$("#comment").load("board_comment.html?"+$param);
			
					}else if($mode == "crop"){
						$("#crop_image > img").cropper({
							crop: function(e) {
								$("#dataX").val(Math.round(e.x));
								$("#dataY").val(Math.round(e.y));
								$("#dataHeight").val(Math.round(e.height));
								$("#dataWidth").val(Math.round(e.width));
								$("#dataRotate").val(e.rotate);
								$("#dataScaleX").val(e.scaleX);
								$("#dataScaleY").val(e.scaleY);
								$("#n_width").html(Math.round(e.width));
								$("#n_height").html(Math.round(e.height));
							},
			
							autoCropArea : 1.0
						});
			
						vboard_it('crop_init');
						vboard_it('scroll_down');
			
					}else if($mode == "crop_init"){
						$("#crop_image > img").cropper("setData", {'width' : 353,'height' : 183});
			
					}else if($mode == "scroll_down"){
						var $h = $(window).height();
			
						$('html, body').animate({scrollTop : $h}, 'slow');
			
					}else if($mode == "reset"){
						$("#crop_image > img").cropper("reset");
			
						vboard_it('crop_init');
			
					}else if($mode == "rotate"){
						if($param == "plus")	$("#crop_image > img").cropper("rotate", 45);
						else					$("#crop_image > img").cropper("rotate", -45);
			
					}else if($mode == "submit"){
						$.post("board_proc.php", $("#board_crop").serialize(), function(data){
							if(data == 0){
								alert("오류가 발생하였습니다");
								return;
							}else{
								var answer = confirm("정상적으로 변경되었습니다\n\n이미지를 다시 불러오시겠습니까?");
			
								if(answer){
									$param = (window.location.pathname) + (window.location.search) + "&reload=" + document.board_crop.seq.value;
			
									location.href = $param;
								}
							}
						});
			
					}else if($mode == "close"){
						document.board_crop.reset();
						$("#tr_crop_image").hide();
			
					}else if($mode == "attach_add"){
						var $total = "1",
							$count = $(".attach").size(),
							$content = $plus_icon = $minus_icon = "";
			
						$index++;
			
						if($count >= $total){
							alert("더이상 추가할 수 없습니다");
							$(".attach").css("4px solid red");
							return;
						}else{
							$plus_icon = "&nbsp;&nbsp;&nbsp;<img src='/admin/assets/img/icon_plus.png' class='vimg cursor' onClick=\"vboard_it('attach_add')\">";
							$minus_icon = "&nbsp;&nbsp;<img src='/admin/assets/img/icon_minus.png' class='vimg cursor' onClick=\"board_it('attach_remove', '"+ $index +"')\">";
			
							$content = "<div class='marginT10 attach' id='attach_"+ $index +"'><input type='file' name='upload[]' style='width:450px' />";
							$content+= $plus_icon + $minus_icon + "<br></div>";
			
							$("#attach").append($content);
						}
			
					}else if($mode == "attach_del"){
						var $this_id = "file_" + $param;
							$number = $content = $plus_icon = $minus_icon = $class = "";
			
						answer = confirm("삭제하시겠습니까?");
			
						$.post("board_proc.php", {mode : $mode, seq : $param}, function(data){
							if(data == 0){
								alert("오류가 발생하였습니다");
								return;
							}else{
								$("#attach > div").each(function(i){
									if( $this_id == $(this).attr("id") )	$number = i;
								});
			
								$index++;
			
								$plus_icon = "&nbsp;&nbsp;&nbsp;<img src='/admin/assets/img/icon_plus.png' class='vimg cursor' onClick=\"vboard_it('attach_add')\">";
								$minus_icon = "&nbsp;&nbsp;<img src='/admin/assets/img/icon_minus.png' class='vimg cursor' onClick=\"board_it('attach_remove', '"+ $index +"')\">";
			
								$class = ($number == 0) ? "" : "marginT10";
								$minus_icon = ($number == 0) ? "" : $minus_icon;
			
								$content = "<div class='"+ $class +" attach' id='attach_"+ $index +"'><input type='file' name='upload[]' style='width:450px' />";
								$content+= $plus_icon + $minus_icon + "<br></div>";
			
								$("#" + $this_id).remove();
								$("#attach").append($content);
							}
						});
					}
				}
			</script>
		</div><!-- admin_right 끝 -->
    </div><!-- container 끝 -->

    <div id="admin_footer">
        <div class="f_contents nanum_n">COPYRIGHT ⓒ <span class="txt_blue_b nanum_b">다니엘성형외과의원 진료과목 피부과</span> ALL RIGHT RESERVED</div>
    </div>
</div><!-- wrap 끝 -->

<script type="text/javascript">
	$(function(){
		var $current_page = (window.location.pathname),
			$current_form_page = $current_page.replace("_list", "_form"),
			$Scod = "BRD01",
			$Stpe = "SD01",
			$admin = "danielclinic",
			$pattern = /Scod=BRD01/;

		$(".left_menu > dl > dd > a").each(function(){

			var $list = $(this).attr("href"),
				$form = $list.replace("_list", "_form");

			if( ($current_page == $list) || ($current_page == $form) ){
				$(this).addClass("on").parents("dl").each(function(){
					$(this).children("dd").show();
				}).children("dt").children("a").addClass("on");

				var $menutext = $(this).parents("dl").children("dt").children("a").text();
				var $subtext = $(this).text();

				$(".naviText_area>h1").html( $(this).text());
				if($admin=="theweb" && $Stpe!=""){
					$(".naviText_area>h1").append( "("+$Stpe+")" );
				}
				$(".navi_area li:eq(1)").html( $(this).parents("dl").children("dt").children("a").text() + "&nbsp;&gt;&nbsp;" );
				$(".navi_area li:eq(2)").html( $(this).text() );
			}else if( $current_page == "/admin/login/mypage.html" ){
				$(".naviText_area>h1").html("정보수정");
				$(".navi_area li:eq(1)").html("정보수정");
			}else{
				if( $Scod && ($pattern.test($list)) ){
					$(this).addClass("on").parents("dl").each(function(){
						$(this).children("dd").show();
					}).children("dt").children("a").addClass("on");

					var $menutext = $(this).parents("dl").children("dt").children("a").text();
					var $subtext = $(this).text();

					$(".naviText_area>h1").html( $(this).text());
					if($admin=="theweb" && $Stpe!=""){
						$(".naviText_area>h1").append( "("+$Stpe+")" );
					}
					$(".navi_area li:eq(1)").html( $(this).parents("dl").children("dt").children("a").text() + "&nbsp;&gt;&nbsp;" );
					$(".navi_area li:eq(2)").html( $(this).text() );
				}
			}
			return;
		});
	});
</script>

</body>
</html>