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
				<h1>시술전/후사진</h1>

				<ul class="navi_area">
					<li>관리자메인&nbsp;&gt;&nbsp;</li>
					<li>게시판관리&nbsp;&gt;&nbsp;</li>
					<li>시술전/후사진</li>
				</ul>
			</div>
			
			<div class="main_bottom_area">
				<div class="list_area">
					<div class="list_box">
						<div class="board_top">
							<div class="top-left"><input type="radio" name="radio_key" id="radio_key1" value="" checked="checked"> <label for="radio_key1"><i></i>전체</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="radio_key" id="radio_key2" value="동안·탄력 클리닉"> <label for="radio_key2"><i></i>동안·탄력 클리닉</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="radio_key" id="radio_key3" value="레이저클리닉"> <label for="radio_key3"><i></i>레이저클리닉</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="radio_key" id="radio_key4" value="흉터클리닉"> <label for="radio_key4"><i></i>흉터클리닉</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="radio_key" id="radio_key5" value="눈·코 성형"> <label for="radio_key5"><i></i>눈·코 성형</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="radio_key" id="radio_key6" value="프리미엄 쁘띠클리닉"> <label for="radio_key6"><i></i>프리미엄 쁘띠클리닉</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="radio_key" id="radio_key7" value="체형클리닉"> <label for="radio_key7"><i></i>체형클리닉</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="radio_key" id="radio_key8" value="두피클리닉"> <label for="radio_key8"><i></i>두피클리닉</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
			
							<form name="search" method="post" action="" onsubmit="return search_it(this)">
								<div class="search_area">
									<input type="hidden" name="search" value="Y">
									<select name="select_key" id="select_key" class="search_sel"><option value="m_id|m_name|b_content">전체</option><option value="m_id">아이디</option><option value="m_name">이름</option><option value="b_content">내용</option></select>						<input type="text" name="input_key" class="search_t_box" value="">
									<input type="submit" name="submit_btn" value="검색" class="search_btn cursor">
								</div>
							</form>
						</div>
			
						<form name="board" id="board" method="post" action="board_proc.php">
							<input type="hidden" name="mode" value="delete">
							<input type="hidden" name="page" value="1">
							<input type="hidden" name="search" value="">
							<input type="hidden" name="select_key" value="">
							<input type="hidden" name="input_key" value="">
							<input type="hidden" name="Scod" value="BRD20">
							<input type="hidden" name="radio_key" value="">
			
							<table class="list_table" cellpadding="0">
								<colgroup>
									<col width="3%">
									<col width="5%">
			                        <col width="6%">
									<col width="3%">
									<col width="*">
									<col width="10%">
									<col width="10%">
									<col width="5%">
									<col width="5%">
								</colgroup>
								<tr class="cont">
									<th><input type="checkbox" id="selectall"></th>
									<th>사용유무</th>
			                        <th>메인노출유무</th>
									<th>번호</th>
									<th>제목</th>
									<th>작성자</th>
									<th>등록일</th>
									<th>파일</th>
									<th>조회</th>
								</tr>
			
								<tr class="cont">
									<td><input type="checkbox" name="seq_list[]" value="2104"></td>
									<td><img src="${pageContext.request.contextPath}/resources/img/admin/ck_img_on.png" class="cursor vimg" id="delflag_2104" onclick="vboard_it('delflag', '2104')"></td>
                                       <td><img src="${pageContext.request.contextPath}/resources/img/admin/ck_img_none.png" class="cursor vimg" id="ismain_2104" onclick="vboard_it('is_main', '2104')"></td>
									<td>103</td>
									<td>
										<p class="title">
											<a href=""><b>[눈·코 성형]</b> 하안검 절개</a>
										</p>
									</td>
									<td>theweb</td>
									<td>2019-07-15</td>
									<td><i class="ico file">첨부파일</i></td>
									<td>0</td>
								</tr>
							</table>
						</form>
					</div>
			
					<div class="btn_area">
						<p class="btn_left">
							<button type="button" class="btn_gray" onclick="board_it('delete')">선택삭제</button>
							<button type="button" class="btn_gray" onclick="board_it('tap_change', 'BRD20')">게시물이동</button>
						</p>
						<p class="btn_right">
							<button type="button" class="btn_black" onclick="">등록</button>
						</p>
					</div>
			
					<div class="board_paging no_print">
						<a href="javascript:;" class="direction">&lt;&lt;</a>
						<a href="javascript:;" class="direction">&lt;</a>
						<a href="javascript:;" class="on">1</a>
						<a href="">2</a>
						<a href="">3</a>
						<a href="">4</a>
						<a href="">5</a>
						<a href="">6</a>
						<a href="">7</a>
						<a href="">8</a>
						<a href="">9</a>
						<a href="">10</a>
						<a href="" class="direction">&gt;</a>
						<a href="" class="direction">&gt;&gt;</a>
					</div>
				</div>
			</div>
			
			
			<script type="text/javascript">
				$(function(){
					$("#selectall").click(function(){
						var checekd = $(this).attr("checked");
			
						$("#board input:checkbox").each(function(){
							var subchecked = $(this).attr("checked");
							if(subchecked != checekd){
								$(this).click();
							}
						});
					});
			
					$("input[name=radio_key]").on("change", function(){
						var $val = ( $(this).val() == "" ) ? "N" : "Y",
							$param = "select_key=&input_key=&Scod=BRD20&search="+ $val +"&radio_key=" + $(this).val();
			
						location.href = (window.location.pathname) + "?" + $param;
					});
				});
			
				function vboard_it($mode, $param){
					if($mode == "delflag"){
						$.post("board_proc.php", {mode : $mode, seq :$param}, function(data){
							if(data == 0){
								alert("오류가 발생하였습니다");
							}else{
								var $img = (data == "Y") ? "/admin/assets/img/ck_img_on.png" : "/admin/assets/img/ck_img_none.png";
			
								$("#delflag_"+$param).attr("src", $img);
							}
						});
					}else if($mode == "is_main"){
			            $.post("board_proc.php", {mode : $mode, seq :$param}, function(data){
			                if(data == 0){
			                    alert("오류가 발생하였습니다");
			                }else{
			                    var $img = (data == "Y") ? "/admin/assets/img/ck_img_on.png" : "/admin/assets/img/ck_img_none.png";
			
			                    $("#ismain_"+$param).attr("src", $img);
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