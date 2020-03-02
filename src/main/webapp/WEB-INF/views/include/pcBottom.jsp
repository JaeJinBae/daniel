<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<section class="daniel-location">
	<ul>
		<!-- 오시는길(지도)시작 -->
		<li class="location">
			<div class="location-info">
				<i class="kinds">MAP</i>
				<h6 class="tit">오시는 길</h6>
				<p class="cap">경남 창원시 성산구 마디미로22번길 12, 4F</p>
				<a href="${pageContext.request.contextPath}/menu01_03" class="more" title="자세히 보기">자세히</a>
			</div>
		</li>
		<!-- 오시는길(지도)끝 -->

		<!-- 진료시간 안내 시작 -->
		<li class="hospital-info">
			<h6 class="tit"><b>진료시간</b> 안내 테이블</h6>
			<i class="bar"></i>
			<table class="time-table">
				<caption>진료시간 안내 테이블</caption>
				<tbody>
					<tr>
						<th>월·수·목</th>
						<td>AM 10시 ~ PM 7시</td>
					</tr>
					<tr>
						<th>화</th>
						<td>PM 2시 30분 ~ PM 7시</td>
					</tr>
					<tr>
						<th>금</th>
						<td>AM 10시 ~ PM 9시 <span>(야간)</span></td>
					</tr>
					<tr>
						<th>토요일</th>
						<td>AM 10시 ~ PM 2시</td>
					</tr>
					<tr>
						<th>점심시간</th>
						<td>PM 1시 ~ PM 2시 30분</td>
					</tr>
				</tbody>
			</table>
			<p class="cap">
				※ 토요일은 점심시간 없이 진료합니다.<br>
				※ 일요일 및 공휴일은 휴진입니다.
			</p>
			<a href="${pageContext.request.contextPath}/menu01_03" class="more" title="자세히 보기">자세히 보기</a>
		</li>
		<!-- 진료시간 안내 끝 -->

		<!-- 상담문의 시작 -->
		<li class="counsel">
			<div class="counsel-info">
				<h6 class="tit">상담문의</h6>
				<a href="tel:055-284-0911" class="call" title="">055)<b>284.0911</b></a>
				<p class="cap">빠르고 친절하게 상담하겠습니다 </p>
			</div>
			<div class="counsel-sns">
				<a href="http://pf.kakao.com/_EZraj" target="_blank" class="kakao">카카오톡 상담<b>@다니엘성형외과</b></a>
				<a href="https://talk.naver.com/ct/wc45p6" target="_blank" class="naver">네이버 톡톡</a>
				<a href="${pageContext.request.contextPath}/menu09_02" class="online">온라인 상담</a>
			</div>
		</li>
		<!-- 상담문의 끝 -->
	</ul>
</section>