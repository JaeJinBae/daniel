<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script>
$(function(){
	$(".left_menu > dl > dd").css("display", "none");
});
</script>
<div class="left_logo_area">
	<div class="left_logo">
		<a href="${pageContext.request.contextPath}/admin/main"><img src="${pageContext.request.contextPath}/resources/filedata/setting/20180628_60AB76402580D592.png" width="159" height="50" class="cursor"></a>
	</div>
</div>

<div class="left_menu">
	<dl>
		<dt><a href="javascript:;">게시판관리</a></dt>
		<dd><a href="${pageContext.request.contextPath}/admin/menu01_01">공지사항</a></dd>
		<dd><a href="${pageContext.request.contextPath}/admin/menu01_02">시술전/후사진</a></dd>
		<dd><a href="${pageContext.request.contextPath}/admin/menu01_03">리얼스토리</a></dd>
		<dd><a href="${pageContext.request.contextPath}/admin/menu01_04">시술&amp;수술시주의사항</a></dd>
		<dd><a href="${pageContext.request.contextPath}/admin/menu01_05">자필후기</a></dd>
	</dl>
	<dl>
		<dt><a href="javascript:;">시술 예약 관리</a></dt>
		<dd><a href="${pageContext.request.contextPath}/admin/menu02_01">시술 예약 목록</a></dd>
		<dd><a href="${pageContext.request.contextPath}/admin/menu02_02">시술 카테고리 관리</a></dd>
		<dd><a href="${pageContext.request.contextPath}/admin/menu02_03">예약 환경설정</a></dd>
		<dd><a href="${pageContext.request.contextPath}/admin/menu02_04">휴진일 관리</a></dd>
	</dl>
	<dl>
		<dt><a href="javascript:;">이벤트 관리</a></dt>
		<dd><a href="${pageContext.request.contextPath}/admin/menu03_01">이벤트 목록</a></dd>
	</dl>
	<dl>
		<dt><a href="javascript:;">회원관리</a></dt>
		<dd><a href="${pageContext.request.contextPath}/admin/menu04_01">가입회원</a></dd>
		<dd><a href="${pageContext.request.contextPath}/admin/menu04_02">탈퇴회원</a></dd>
		<dd><a href="${pageContext.request.contextPath}/admin/menu04_03">SNS로그인 로그</a></dd>
	</dl>
	<dl>
		<dt><a href="javascript:;">상담관리</a></dt>
		<dd><a href="${pageContext.request.contextPath}/admin/menu05_01">상담관리</a></dd>
		<dd><a href="${pageContext.request.contextPath}/admin/menu05_02">빠른상담</a></dd>
	</dl>
	<dl>
		<dt><a href="javascript:;">기타관리</a></dt>
		<dd><a href="${pageContext.request.contextPath}/admin/menu06_01">팝업관리</a></dd>
	</dl>
	<dl>
		<dt><a href="javascript:;">마케팅분석</a></dt>
		<dd><a href="${pageContext.request.contextPath}/admin/menu07_01">트래픽분석</a></dd>
		<dd><a href="${pageContext.request.contextPath}/admin/menu07_02">유입경로</a></dd>
	</dl>
</div>