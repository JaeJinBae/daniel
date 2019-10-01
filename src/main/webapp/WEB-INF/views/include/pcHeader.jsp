<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<header id="header" class="" style="left: 0px;">
	<div class="gnb-bg" style="display: none;"></div>
	<div class="logo">
		<a href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/resources/img/common/logo.png" alt=""></a>
	</div>
	<div id="gnb">
		<div class="inner">
			<ul>
			<li class="gnb ">
				<a href="${pageContext.request.contextPath}/menu01_01" data-text="다니엘 소개"><span>다니엘 소개</span></a>
				<ul class="lnb-wrap">
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu01_01" data-text="다니엘의 특별함"><span>다니엘의 특별함</span></a></li>
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu01_02" data-text="의료진 소개"><span>의료진 소개</span></a></li>
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu01_03" data-text="진료시간/오시는길"><span>진료시간/오시는길</span></a></li>
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu01_04" data-text="보유장비"><span>보유장비</span></a></li>
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu01_05" data-text="선한이웃, 다니엘"><span>선한이웃, 다니엘</span></a></li>
				</ul>
			</li>
			<li class="gnb ">
				<a href="${pageContext.request.contextPath}/menu02_01" data-text="프리미엄 쁘띠클리닉"><span>프리미엄 쁘띠클리닉</span></a>
				<ul class="lnb-wrap">
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu02_01" data-text="보톡스/필러"><span>보톡스/필러</span></a></li>
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu02_02" data-text="안면윤곽주사"><span>안면윤곽주사</span></a></li>
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu02_03" data-text="멀티파워주사"><span>멀티파워주사</span></a></li>
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu02_04" data-text="가격안내"><span>가격안내</span></a></li>
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu02_05" data-text="예약하기"><span>예약하기</span></a></li>
				</ul>
			</li>
			<li class="gnb ">
				<a href="${pageContext.request.contextPath}/menu03_01" data-text="레이저 클리닉"><span>레이저 클리닉</span></a>
				<ul class="lnb-wrap">
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu03_01" data-text="다니엘 복합레이저"><span>다니엘 복합레이저</span></a></li>
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu03_02" data-text="난치성색소"><span>난치성색소</span></a></li>
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu03_03" data-text="여드름"><span>여드름</span></a></li>
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu03_04" data-text="안면홍조"><span>안면홍조</span></a></li>
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu03_05" data-text="모공/흉터"><span>모공/흉터</span></a></li>
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu03_06" data-text="프리미엄토닝"><span>프리미엄토닝</span></a></li>
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu03_07" data-text="웨딩패키지"><span>웨딩패키지</span></a></li>
				</ul>
			</li>
			<li class="gnb ">
				<a href="${pageContext.request.contextPath}/menu04_01" data-text="눈/코 성형"><span>눈/코 성형</span></a>
				<ul class="lnb-wrap">
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu04_01" data-text="멜로디 눈성형"><span>멜로디 눈성형</span></a></li>
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu04_02" data-text="눈매교정"><span>눈매교정</span></a></li>
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu04_03" data-text="트임성형"><span>트임성형</span></a></li>
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu04_04" data-text="리듬 코성형"><span>리듬 코성형</span></a></li>
				</ul>
			</li>
			<li class="gnb ">
				<a href="${pageContext.request.contextPath}/menu05_01" data-text="동안/탄력 클리닉"><span>동안/탄력 클리닉</span></a>
				<ul class="lnb-wrap">
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu05_01" data-text="리프팅 레이저"><span>리프팅 레이저</span></a></li>
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu05_02" data-text="안면거상술"><span>안면거상술</span></a></li>
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu05_03" data-text="이마내시경거상술"><span>이마내시경거상술</span></a></li>
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu05_04" data-text="실리프팅/스킨보톡스"><span>실리프팅/스킨보톡스</span></a></li>
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu05_05" data-text="광채 지방이식"><span>광채 지방이식</span></a></li>
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu05_06" data-text="상안검/하안검"><span>상안검/하안검</span></a></li>
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu05_07" data-text="슈링크 리프팅"><span>슈링크 리프팅</span></a></li>
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu05_08" data-text="필로가135주사"><span>필로가135주사</span></a></li>
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu05_09" data-text="코레지 리프팅"><span>코레지 리프팅</span></a></li>
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu05_10" data-text="써마지FLX"><span>써마지FLX</span></a></li>
				</ul>
			</li>
			<li class="gnb ">
				<a href="${pageContext.request.contextPath}/menu06_01" data-text="흉터 클리닉"><span>흉터 클리닉</span></a>
				<ul class="lnb-wrap">
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu06_01" data-text="흉터 클리닉"><span>흉터 클리닉</span></a></li>
				</ul>
			</li>
			<li class="gnb ">
				<a href="${pageContext.request.contextPath}/menu07_01" data-text="체형 클리닉"><span>체형 클리닉</span></a>
				<ul class="lnb-wrap">
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu07_01" data-text="하모니 지방흡입"><span>하모니 지방흡입</span></a></li>
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu07_02" data-text="아큐주사"><span>아큐주사</span></a></li>
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu07_03" data-text="리포리바인"><span>리포리바인</span></a></li>
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu07_04" data-text="팻다운 주사"><span>팻다운 주사</span></a></li>
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu07_05" data-text="바디슈링크"><span>바디슈링크</span></a></li>
				</ul>
			</li>
			<li class="gnb ">
				<a href="${pageContext.request.contextPath}/menu08_01" data-text="메디컬스킨케어"><span>메디컬스킨케어</span></a>
				<ul class="lnb-wrap">
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu08_01" data-text="메디컬스킨케어"><span>메디컬스킨케어</span></a></li>
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu08_02" data-text="두피탈모"><span>두피탈모</span></a></li>
				</ul>
			</li>
			<li class="gnb ">
				<a href="${pageContext.request.contextPath}/menu09_01" data-text="커뮤니티"><span>커뮤니티</span></a>
				<ul class="lnb-wrap">
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu09_01" data-text="공지사항"><span>공지사항</span></a></li>
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu09_02" data-text="온라인 상담"><span>온라인 상담</span></a></li>
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu09_03" data-text="시술 전후 사진"><span>시술 전후 사진</span></a></li>
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu09_04" data-text="리얼스토리"><span>리얼스토리</span></a></li>
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu09_05" data-text="자필후기"><span>자필후기</span></a></li>
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu09_06" data-text="이벤트"><span>이벤트</span></a></li>
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu09_07" data-text="예약하기"><span>예약하기</span></a></li>
					<li class="lnb "><a href="${pageContext.request.contextPath}/menu09_08" data-text="시술&amp;수술주의사항"><span>시술&amp;수술주의사항</span></a></li>
				</ul>
			</li>
		</ul>
	</div>
	</div>
	<div class="gnb-login">
		<input id="session_id" type="hidden" value="${sessionScope.id}">
		<input id="session_no" type="hidden" value="${sessionScope.no}">
		<c:if test="${empty sessionScope.id}">
			<a href="${pageContext.request.contextPath}/login" class="login">로그인 ▶</a>
			<a href="${pageContext.request.contextPath}/join" class="join">회원가입 ▶</a>
		</c:if>
		<c:if test="${!empty sessionScope.id}">
			<a href="${pageContext.request.contextPath}/logout" class="login">로그아웃 ▶</a>
			<a href="${pageContext.request.contextPath}/myInfo" class="join">마이페이지 ▶</a>
		</c:if>
	</div>

	<a href="${pageContext.request.contextPath}/menu09_07" class="gnb-view"></a>
</header>
<script>
$(function(){
	var access_url = document.referrer;
	var ua = navigator.userAgent.toLowerCase();
    var browser = "";
    var os = "";
	if(access_url.indexOf("danielps.co.kr") == -1 && access_url.indexOf("danielps0911.cafe24") == -1){
		//browser
		if( ua.indexOf('msie 7') != -1 ) {
            browser = "Internet Explorer7";
        }else if( ua.indexOf('trident/4.0') != -1 ) {
        	/* IE8 부터는 msie 값으로 브라우저 버전을 분별할수 없음 trident 값으로 해야한다. */
        	browser = "Internet Explorer8";
        }else if( ua.indexOf('trident/5.0') != -1 ) {
            browser = "Internet Explorer9";
        }else if( ua.indexOf('trident/6.0') != -1 ) {
            browser = "Internet Explorer10";
        }else if( ua.indexOf('trident/7.0') != -1 ) {
            browser = "Internet Explorer11";
        }else if( !!window.opera ) {
            browser = "Opera";
        }else if( ua.indexOf('safari') != -1 ) {
            browser = "Safari";
        }else if( ua.indexOf('applewebkit/5') != -1 ) {
            browser = "Safari3";
        }else if( ua.indexOf('mac') != -1 ) {
            browser = "Mac";
        }else if( ua.indexOf('chrome') != -1 ) {
            browser = "Chrome";
        }else if( ua.indexOf('firefox') != -1 ) {
            browser = "Firefox";
        }else{
        	browser = "Unknown";
        }
        
        //os
		if( ua.indexOf("NT 5.1") != -1 ) {
			os = "Windows XP";
        }else if( ua.indexOf("NT 6.0") != -1 ) {
        	os = "Windows Vista";
        }else if( ua.indexOf("NT 6.1") != -1 ) {
        	os = "Windows 7";
        }else if( ua.indexOf("NT 6.2") != -1 ) {
        	os = "Windows 8";
        }else if(ua.indexOf("WindowsNT6.4") != -1){
        	os = "Windows 10";
        }else if( ua.indexOf("Linux") != -1 ) {
        	os = "Linux";
        }else if( ua.indexOf("Mac") != -1 ) {
        	os = "Mac";
        }else{
        	os = "Unknown";
        }
	}
});
</script>