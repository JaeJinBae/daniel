<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<footer id="footer">
	<div class="inner">
		<!-- fnb 시작 -->
		<ul class="fnb">
			<li>
				<a href="/499/?pCode=499">다니엘 소개</a>
			</li>
			<li>
				<a href="/501/?pCode=501">찾아오시는 길</a>
			</li>
			<li>
				<a href="/personal">개인정보보호정책</a>
			</li>
			<li>
				<a href="/agree">이용약관</a>
			</li>
			<li>
				<a href="/528/?pCode=528">온라인상담</a>
			</li>
		</ul>
		<!-- fnb 끝 -->
		<div class="footer-info">
			<p>
				<span>다니엘성형외과의원 진료과목 피부과</span>
				<span>주소 : 경남 창원시 성산구 마디미로22번길 12, 4F 다니엘성형외과의원  진료과목 피부과</span>
			</p>
			<p>
				<span>사업자등록번호 : 514-50-00033</span>
				<span>대표 : 윤상호</span>
				<span>성형상담문의 : 055-284-0911</span>
				<span>피부상담문의 : 055-284-0912</span>
			</p>
			<p class="copyright">Copyright @ DanielPlasticSurgery all rights reserved.</p>
		</div>
	</div>
</footer>

<!-- 서브페이지 우측 퀵배너 시작 -->
<!-- 서브페이지 우측 퀵배너 끝 -->
<!-- #wrap 닫기 -->

<!-- 공통 적용 스크립트 , 모든 페이지에 노출되도록 설치. 단 전환페이지 설정값보다 항상 하단에 위치해야함 -->
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"> </script>
<script type="text/javascript"> 
	if (!wcs_add) var wcs_add={};
		wcs_add["wa"] = "s_4711a698fadd";
	if (!_nasa) var _nasa={};
		wcs.inflow();
	wcs_do(_nasa);
</script>
<!-- AceCounter Log Gathering Script V.7.5.2017020801 -->
<script language="javascript">
	var _AceGID=(function(){var Inf=['dgc12.acecounter.com','8080','AP4T42369817671','CW','0','NaPm,Ncisy','ALL','0']; var _CI=(!_AceGID)?[]:_AceGID.val;var _N=0;var _T=new Image(0,0);if(_CI.join('.').indexOf(Inf[3])<0){ _T.src =( location.protocol=="https:"?"https://"+Inf[0]:"http://"+Inf[0]+":"+Inf[1]) +'/?cookie'; _CI.push(Inf);  _N=_CI.length; } return {o: _N,val:_CI}; })();
	var _AceCounter=(function(){var G=_AceGID;var _sc=document.createElement('script');var _sm=document.getElementsByTagName('script')[0];if(G.o!=0){var _A=G.val[G.o-1];var _G=(_A[0]).substr(0,_A[0].indexOf('.'));var _C=(_A[7]!='0')?(_A[2]):_A[3];var _U=(_A[5]).replace(/\,/g,'_');_sc.src=(location.protocol.indexOf('http')==0?location.protocol:'http:')+'//cr.acecounter.com/Web/AceCounter_'+_C+'.js?gc='+_A[2]+'&py='+_A[4]+'&gd='+_G+'&gp='+_A[1]+'&up='+_U+'&rd='+(new Date().getTime());_sm.parentNode.insertBefore(_sc,_sm);return _sc.src;}})();
</script>
<noscript><img src='http://dgc12.acecounter.com:8080/?uid=AP4T42369817671&je=n&' border='0' width='0' height='0' alt=''></noscript>
<!-- AceCounter Log Gathering Script End -->
<script>
	//빠른상담 신청하기 ajax함수 들어가는 부분
</script>
<!-- 빠른상담 신청폼 -->
<!-- 빠른상담 신청하기 폼 시작 -->
<div id="quick-inquire">
	<button><img src="${pageContext.request.contextPath}/resources/img/landing/web/theme/btn_quick_counsel.jpg" alt=""></button>
	<div class="inner">
		<form name="land" id="land" method="post">
		<fieldset>
		<legend>빠른 상담신청</legend>
		<input type="hidden" name="mode" value="insert">
			<ul class="quick-counsel01">
				<li>
					<label for="i_name">고객명</label>
					<input name="i_name" id="i_name" type="text" data-name="고객명" valid="required">
				</li>
				<li>
					<label for="i_tel1">연락처</label>
					<input name="i_tel1" id="i_tel1" type="text" maxlength="3" data-name="연락처" valid="required,phone_tel33">
					<input name="i_tel2" id="i_tel2" type="text" maxlength="4" data-name="연락처" valid="required,phone_tel34">
					<input name="i_tel3" id="i_tel3" type="text" maxlength="4" data-name="연락처" valid="required,phone_tel44">
				</li>
				<li>
					<label for="i_kind">상담분야</label>
					<select name="i_kind" id="i_kind" class="both"><option value="동안탄력클리닉">동안탄력클리닉</option><option value="레이저클리닉">레이저클리닉</option><option value="흉터클리닉">흉터클리닉</option><option value="눈코성형">눈코성형</option><option value="쁘띠클리닉">쁘띠클리닉</option><option value="체형클리닉">체형클리닉</option><option value="두피클리닉">두피클리닉</option><option value="기타">기타</option></select>				</li>
			</ul>
			<ul class="quick-counsel02">
				<li>
					<label for="i_content" data-name="상담내용">상담내용</label>
					<textarea name="i_content" id="i_content" data-name="상담내용" valid="required" placeholder="상담내용과 전화가능 시간대를 입력해 주세요"></textarea>

					<button type="button" class="btn-private">개인정보취급방침</button>
					<span class="private">
						<input title="약관동의" id="agree" type="checkbox" checked="" value="Y">
						<label data-name="동의" for="agree">동의합니다.</label>
					</span>
				</li>
				<li>
					<button type="button" onclick="land_it('insert')" data-name="간편상담신청"><img src="${pageContext.request.contextPath}/resources/img/landing/web/theme/btn_quick_counsel_submit.jpg" alt=""></button>
				</li>
			</ul>
		</fieldset>
		</form>
	</div>
</div>
<!-- 빠른상담 신청하기 폼 끝 -->
<!-- 개인정보 취급방침 팝업 시작 -->
<div class="pop-private">
	<div class="pop-inner">
		<h3><svg class="svg-inline--fa fa-lock fa-w-14" aria-hidden="true" data-fa-processed="" data-prefix="fas" data-icon="lock" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><path fill="currentColor" d="M400 224h-24v-72C376 68.2 307.8 0 224 0S72 68.2 72 152v72H48c-26.5 0-48 21.5-48 48v192c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48V272c0-26.5-21.5-48-48-48zm-104 0H152v-72c0-39.7 32.3-72 72-72s72 32.3 72 72v72z"></path></svg><!-- <i class="fas fa-lock"></i> --> 개인정보 취급방침</h3>
		<p>
			<b>1.개인정보 수집이용에 대한 동의</b>
			‘다니엘성형외과의원’는 회원님의 개인정보를 중요시하며, “정보통신망
			이용촉진 및 정보보호”에 관한 법률을 준수하고 있습니다.
			회원님의 소중한 개인정보는 다음과 같은 정책에 따라 수집 및 이용되며,
			회원님께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며,
			개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.
			또한 개인정보취급방침을 개정하는 경우 웹사이트 공지사항을 통하여 공지할
			것입니다.<br><br><br>

			<b>2.개인정보의 수집•이용 목적</b>
			회원님께서 요청하신 제휴 문의에 대한 질의에 더욱 정확한 답변을 위해 성함,
			연락처, 상담내용 등의 정보가 수집됩니다.
			- 수집항목 : 성명, 연락처, 상담내용
			- 이용목적 : 상담내용에 대한 답변, 상담 관련 마케팅 및 정보안내
			고지에 활용<br><br><br>

			<b>3.보유이용 기간</b>
			원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 바로
			파기합니다. 단, 다음의 정보에 대해서는 아래의 사유로 명시한기간 동안 보존합니다.
			- 보존 이유 : 회원님의 동의를 통한 정보 유지
			- 보존 기간 : 회원정보 삭제 요청 시까지
		</p>
		<button class="pop-close" type="button"><svg class="svg-inline--fa fa-times fa-w-12" aria-hidden="true" data-fa-processed="" data-prefix="fas" data-icon="times" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512"><path fill="currentColor" d="M323.1 441l53.9-53.9c9.4-9.4 9.4-24.5 0-33.9L279.8 256l97.2-97.2c9.4-9.4 9.4-24.5 0-33.9L323.1 71c-9.4-9.4-24.5-9.4-33.9 0L192 168.2 94.8 71c-9.4-9.4-24.5-9.4-33.9 0L7 124.9c-9.4 9.4-9.4 24.5 0 33.9l97.2 97.2L7 353.2c-9.4 9.4-9.4 24.5 0 33.9L60.9 441c9.4 9.4 24.5 9.4 33.9 0l97.2-97.2 97.2 97.2c9.3 9.3 24.5 9.3 33.9 0z"></path></svg><!-- <i class="fas fa-times"></i> --> 닫기</button>
	</div>
</div>
<!-- 개인정보 취급방침 팝업 끝 -->
<script>
	function land_callback(){
		/* $.post("/landing/inquire_proc.php", $("#land").serialize(), function(data){
			alert("상담신청이 완료되었습니다.\n고객님의 소중한 정보는 상담에만 이용됩니다.\n빠른시일내에 답변드리겠습니다. 감사합니다");
			land_it('reset');
		}); */
	/*
		$.ajax({
					type: 'post'
					, async: true
					, url: '/landing/inquire_proc.php'
					, dataType:"json"
					, data: {
						push_token:push_token,
						mode:"base"
					}, success: function(data) {
						//alert(data.id);
	
					},error:function(request,status,error){
							alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
					}
				});*/
	}
	
	function land_it($mode){
		var fm = document.land;
	
		if(!$('#agree').is(':checked')) {
			alert("개인정보취급방침에 동의해 주시길 바랍니다.");
			return false;
		}
	
		if($mode == "insert"){
			if( !$("#land").validate() ) return;
			land_callback();
	
		}else if($mode == "reset"){
			fm.reset();
		}
	}
</script>