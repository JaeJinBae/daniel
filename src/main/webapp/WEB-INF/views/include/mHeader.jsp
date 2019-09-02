<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header id="header" class="trn">
	<div class="inner">
		<div class="logo">
			<a href="/m/"><img src="${pageContext.request.contextPath}/resources/img/m/common/logo.png" alt="로고"></a>
		</div>
		<div id="hamburger" class="hamburger spin">
			<div class="box">
				<div class="bar"></div>
			</div>
		</div>
		<div id="gnb">
			<div class="inner">
				<div class="memer-service">
					<a href="/m-login" class="login">로그인 ▶</a>
					<a href="/m-join" class="join">회원가입 ▶</a>
				</div>
				<ul>
					<li class="gnb ">
						<button data-text="다니엘 소개"><span>다니엘 소개</span></button>
						<ul class="lnb-wrap">
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu01_01" data-text="다니엘의 특별함"><span>다니엘의 특별함</span></a></li>
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu01_02" data-text="의료진 소개"><span>의료진 소개</span></a></li>
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu01_03" data-text="진료시간/오시는길"><span>진료시간/오시는길</span></a></li>
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu01_04" data-text="보유장비"><span>보유장비</span></a></li>
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu01_05" data-text="선한이웃, 다니엘"><span>선한이웃, 다니엘</span></a></li>
						</ul>
					</li>
					<li class="gnb ">
						<button data-text="프리미엄 쁘띠클리닉"><span>프리미엄 쁘띠클리닉</span></button>
						<ul class="lnb-wrap">
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu02_01" data-text="보톡스/필러"><span>보톡스/필러</span></a></li>
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu02_02" data-text="안면윤곽주사"><span>안면윤곽주사</span></a></li>
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu02_03" data-text="멀티파워주사"><span>멀티파워주사</span></a></li>
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu02_04" data-text="가격안내"><span>가격안내</span></a></li>
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu02_05" data-text="예약하기"><span>예약하기</span></a></li>
						</ul>
					</li>
					<li class="gnb ">
						<button data-text="레이저 클리닉"><span>레이저 클리닉</span></button>
						<ul class="lnb-wrap">
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu03_01" data-text="다니엘 복합레이저"><span>다니엘 복합레이저</span></a></li>
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu03_02" data-text="난치성색소"><span>난치성색소</span></a></li>
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu03_03" data-text="여드름"><span>여드름</span></a></li>
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu03_04" data-text="안면홍조"><span>안면홍조</span></a></li>
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu03_05" data-text="모공/흉터"><span>모공/흉터</span></a></li>
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu03_06" data-text="프리미엄 토닝"><span>프리미엄 토닝</span></a></li>
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu03_07" data-text="웨딩패키지"><span>웨딩패키지</span></a></li>
						</ul>
					</li>
					<li class="gnb ">
						<button data-text="눈/코 성형"><span>눈/코 성형</span></button>
						<ul class="lnb-wrap">
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu04_01" data-text="멜로디 눈성형"><span>멜로디 눈성형</span></a></li>
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu04_02" data-text="눈매교정"><span>눈매교정</span></a></li>
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu04_03" data-text="트임성형"><span>트임성형</span></a></li>
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu04_04" data-text="리듬 코성형"><span>리듬 코성형</span></a></li>
						</ul>
					</li>
					<li class="gnb ">
						<button data-text="동안/탄력 클리닉"><span>동안/탄력 클리닉</span></button>
						<ul class="lnb-wrap">
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu05_01" data-text="리프팅 레이저"><span>리프팅 레이저</span></a></li>
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu05_02" data-text="안면거상술"><span>안면거상술</span></a></li>
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu05_03" data-text="이마내시경거상술"><span>이마내시경거상술</span></a></li>
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu05_04" data-text="실리프팅/스킨보톡스"><span>실리프팅/스킨보톡스</span></a></li>
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu05_05" data-text="광채 지방이식"><span>광채 지방이식</span></a></li>
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu05_06" data-text="상안검/하안검"><span>상안검/하안검</span></a></li>
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu05_07" data-text="슈링크 리프팅"><span>슈링크 리프팅</span></a></li>
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu05_08" data-text="필로가135주사"><span>필로가135주사</span></a></li>
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu05_09" data-text="코레지 리프팅"><span>코레지 리프팅</span></a></li>
						</ul>
					</li>
					<li class="gnb ">
						<button data-text="흉터 클리닉"><span>흉터 클리닉</span></button>
						<ul class="lnb-wrap">
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu06_01" data-text="흉터 클리닉"><span>흉터 클리닉</span></a></li>
						</ul>
					</li>
					<li class="gnb ">
						<button data-text="체형 클리닉"><span>체형 클리닉</span></button>
						<ul class="lnb-wrap">
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu07_01" data-text="하모니 지방흡입"><span>하모니 지방흡입</span></a></li>
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu07_02" data-text="아큐주사"><span>아큐주사</span></a></li>
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu07_03" data-text="리포리바인"><span>리포리바인</span></a></li>
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu07_04" data-text="팻다운 주사"><span>팻다운 주사</span></a></li>
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu07_05" data-text="바디슈링크"><span>바디슈링크</span></a></li>
						</ul>
					</li>
					<li class="gnb ">
						<button data-text="메디컬스킨케어"><span>메디컬스킨케어</span></button>
						<ul class="lnb-wrap">
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu08_01" data-text="메디컬스킨케어"><span>메디컬스킨케어</span></a></li>
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu08_02" data-text="두피탈모"><span>두피탈모</span></a></li>
						</ul>
					</li>
					<li class="gnb ">
						<button data-text="커뮤니티"><span>커뮤니티</span></button>
						<ul class="lnb-wrap">
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu09_01" data-text="공지사항"><span>공지사항</span></a></li>
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu09_02" data-text="온라인 상담"><span>온라인 상담</span></a></li>
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu09_03" data-text="시술 전후 사진"><span>시술 전후 사진</span></a></li>
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu09_04" data-text="리얼스토리"><span>리얼스토리</span></a></li>
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu09_05" data-text="자필후기"><span>자필후기</span></a></li>
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu09_06" data-text="이벤트"><span>이벤트</span></a></li>
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu09_07" data-text="예약하기"><span>예약하기</span></a></li>
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu09_08" data-text="시술&amp;수술주의사항"><span>시술&amp;수술주의사항</span></a></li>
							<li class="lnb "><a href="${pageContext.request.contextPath}/m/menu09_09" data-text="자필후기"><span>자필후기</span></a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</div>
</header>