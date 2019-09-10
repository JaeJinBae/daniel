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
<script>
$(function(){
	
});
</script>
</head>
<body class="body_bg">
<div id="wrap">
    <div class="login_area">
        <div class="title nanum_b">ADMIN LOGIN</div>
        <div class="form_area">
            <div class="logo"><img src="${pageContext.request.contextPath}/resources/filedata/setting/20180628_1F3C5D32FFDE897A.jpg" width="372" height="143"></div>

            <form name="login" id="login" method="post" action="/admin/login/login_proc.php" autocomplete="off" onsubmit="return login_it(this)">
				<div class="form_wrap">

					<div class="id_area">
						<p class="tt nanum_n">username</p>
						<input type="text" class="box_w" id="m_id" name="m_id" value="" valid="required" element-name="아이디">
					</div>

					<div class="pw_area">
						<p class="tt nanum_n">password</p>
						<input type="password" class="box_w" name="m_pass" id="m_pass" value="" valid="required" element-name="비밀번호">
					</div>

					<div class="id_remem">
						<input type="checkbox" id="id_save" name="id_save" value="1">
						<span><label for="id_save">ID기억하기</label></span>
					</div>

					<div class="btn_area">
						<button type="submit" class="login_btn btn_blue">LOGIN</button>
					</div>
				</div>
            </form>

            <div class="call bg_sky nanum_b">더웹 고객센터 TEL : 070-5056-6030</div>
        </div>
    </div>
</div>




<script type="text/javascript">
	$(function(){
		$("#m_id").focus();
	});
</script>
</body>
</html>