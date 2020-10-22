<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
function quickInquireRegister(info){
	$.ajax({
		url:"${pageContext.request.contextPath}/quickInquireRegister",
		type:"POST",
		contentType : "application/json; charset=UTF-8",
		dataType:"text",
		data: JSON.stringify(info),
		async:false,
		success:function(json){
			if(json =="no"){
				alert("빠른상담 신청에 실패하였습니다. 관리자에게 문의하십시오.");
				
			}else if(json == "ok"){
				alert("상담신청이 완료되었습니다.\n고객님의 소중한 정보는 상담에만 이용됩니다.\n빠른시일내에 답변드리겠습니다. 감사합니다");
			}
		},
		error:function(request,status,error){
			console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
}
$(function(){
	$("#quickRegisterBtn").click(function(){
		var name = $("#i_name").val();
		var phone1 = $("#i_tel1").val();
		var phone2 = $("#i_tel2").val();
		var phone3 = $("#i_tel3").val();
		var phone = phone1+"-"+phone2+"-"+phone3;
		var clinic_type = $("#i_kind").val();
		var content = $("#i_content").val();
		var access_url = document.referrer;
		var nd = new Date();
		var ny = nd.getFullYear();
		var nm = nd.getMonth()+1;
		nm = (nm>9?'':'0')+nm;
		var ndd = nd.getDate();
		ndd = (ndd>9?'':'0')+ndd;
		var regdate = ny+"-"+nm+"-"+ndd;
		
		var info = {"name":name, "phone":phone, "clinic_type":clinic_type, "content":content, "regdate":regdate, "access_url":access_url};
		quickInquireRegister(info);
	});
});
</script>
<a href="#wrap" class="top"> <!-- #wrap 닫기 -->	
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
		var val1 = "";
		var val2 = "";
		var val3 = "";
		var nowURL = window.location.href;
		if(nowURL.indexOf("danielclinic")!= -1){
			val1 = "dgc11.acecounter.com";
			val2 = "AP3T42369817670";
			$("body").append("<noscript><img src='http://dgc11.acecounter.com:8080/?uid=AP3T42369817670&je=n&' border='0' width='0' height='0' alt=''></noscript>");
		}else{
			val1 = "dgc12.acecounter.com";
			val2 = "AP4T42369817671";
			$("body").append("<noscript><img src='http://dgc12.acecounter.com:8080/?uid=AP4T42369817671&je=n&' border='0' width='0' height='0' alt=''></noscript>");
		}
		var _AceGID=(function(){var Inf=[val1,'8080',val2,'CW','0','NaPm,Ncisy','ALL','0']; var _CI=(!_AceGID)?[]:_AceGID.val;var _N=0;var _T=new Image(0,0);if(_CI.join('.').indexOf(Inf[3])<0){ _T.src =( location.protocol=="https:"?"https://"+Inf[0]:"http://"+Inf[0]+":"+Inf[1]) +'/?cookie'; _CI.push(Inf);  _N=_CI.length; } return {o: _N,val:_CI}; })();
		var _AceCounter=(function(){var G=_AceGID;var _sc=document.createElement('script');var _sm=document.getElementsByTagName('script')[0];if(G.o!=0){var _A=G.val[G.o-1];var _G=(_A[0]).substr(0,_A[0].indexOf('.'));var _C=(_A[7]!='0')?(_A[2]):_A[3];var _U=(_A[5]).replace(/\,/g,'_');_sc.src=(location.protocol.indexOf('http')==0?location.protocol:'http:')+'//cr.acecounter.com/Web/AceCounter_'+_C+'.js?gc='+_A[2]+'&py='+_A[4]+'&gd='+_G+'&gp='+_A[1]+'&up='+_U+'&rd='+(new Date().getTime());_sm.parentNode.insertBefore(_sc,_sm);return _sc.src;}})();
	</script>
	<!-- AceCounter Log Gathering Script End -->
	
	
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
						<select name="i_kind" id="i_kind" class="both">
							<option value="동안탄력클리닉">동안탄력클리닉</option>
							<option value="레이저클리닉">레이저클리닉</option>
							<option value="흉터클리닉">흉터클리닉</option>
							<option value="눈코성형">눈코성형</option>
							<option value="쁘띠클리닉">쁘띠클리닉</option>
							<option value="체형클리닉">체형클리닉</option>
							<option value="두피클리닉">두피클리닉</option><option value="기타">기타</option>
						</select>
					</li>
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
						<button type="button" id="quickRegisterBtn" data-name="간편상담신청"><img src="${pageContext.request.contextPath}/resources/img/landing/web/theme/btn_quick_counsel_submit.jpg" alt=""></button>
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
		$.post("/landing/inquire_proc.php", $("#land").serialize(), function(data){
			alert("상담신청이 완료되었습니다.\n고객님의 소중한 정보는 상담에만 이용됩니다.\n빠른시일내에 답변드리겠습니다. 감사합니다");
			land_it('reset');
		});
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
	
	
	
	
	<script type="text/javascript">
		var request_method = "POST";    
		/*
			테스트 서버 : https://dev-alimtalk-api.bizmsg.kr:1443/v1/sender/send
			실제 서버 : https://alimtalk-api.bizmsg.kr/v1/sender/send
		*/    
		var request_url = "https://alimtalk-api.bizmsg.kr/v1/sender/send";
		var request_isAsync = false;
		var request;

		function sendTalkWeek(phn, msg) {
			var userId = "danielps";
			var message_type = "at";
			var phn = phn;
			var profile = "ba3066c326f54ab9bf9fc8e5153eb87d280e4eae";
			var tmplId = "daniel02";
			var msg = msg;

			// 버튼이 있을 경우에만 순서대로 입력(url_pc,url_mobile은 웹링크만 입력, scheme_ios,scheme_android는 앱링크만 입력)
			var button1 = {"type":"WL","name":"오시는길","url_pc":"","url_mobile":"http://danielclinic.co.kr/m/?pCode=501"};
			// var button2 = {"type":"버튼타입","name":"버튼이름","url_pc":"웹 PC링크","url_mobile":"웹 모바일링크","scheme_ios":"앱 ios스킴","scheme_android":"앱 android스킴"};
			// var button3 = {"type":"버튼타입","name":"버튼이름","url_pc":"웹 PC링크","url_mobile":"웹 모바일링크","scheme_ios":"앱 ios스킴","scheme_android":"앱 android스킴"};
			// var button4 = {"type":"버튼타입","name":"버튼이름","url_pc":"웹 PC링크","url_mobile":"웹 모바일링크","scheme_ios":"앱 ios스킴","scheme_android":"앱 android스킴"};
			// var button5 = {"type":"버튼타입","name":"버튼이름","url_pc":"웹 PC링크","url_mobile":"웹 모바일링크","scheme_ios":"앱 ios스킴","scheme_android":"앱 android스킴"};
	 
			var sendArray = [];
			var sendObj = {};

			sendObj['userId'] = userId;
			sendObj['message_type'] = message_type;
			sendObj['phn'] = phn;
			sendObj['profile'] = profile;
			sendObj['tmplId'] = tmplId;
			sendObj['msg'] = msg;
			sendObj['smsKind'] = 'L';
			sendObj['msgSms'] = '';
			sendObj['smsSender'] = '821051580999';
			sendObj['smsLmsTit'] = '821051580999';
			sendObj['button1'] = button1;

			// 버튼이 있을 경우
			// sendObj['button1'] = button1;
			// sendObj['button2'] = button2;
			// sendObj['button3'] = button3;
			// sendObj['button4'] = button4;
			// sendObj['button5'] = button5;

			sendArray.push(sendObj);

			// 객체를 생성한다.
			request = new XMLHttpRequest();
			request.open(request_method, request_url, request_isAsync);
			request.setRequestHeader('Content-Type', 'application/json; charset=UTF-8');
			request.onreadystatechange = handleResponse;

			// 서버로 전송한다.
			//writeResponse("");
			var sendData = JSON.stringify(sendArray);        
			request.send(sendData);
		}

		function handleResponse() {        
			if (request.readyState == 4) {
				// the request is complete
				if (request.status == 200) {
					// the response is ready
					//writeResponse(request.responseText);
				}
			}
		}

		function writeResponse(response) {
			document.getElementById("response").value = response;
		}
	</script>


	<script type="text/javascript">
		var request_method = "POST";    
		/*
			테스트 서버 : https://dev-alimtalk-api.bizmsg.kr:1443/v1/sender/send
			실제 서버 : https://alimtalk-api.bizmsg.kr/v1/sender/send
		*/    
		var request_url = "https://alimtalk-api.bizmsg.kr/v1/sender/send";
		var request_isAsync = false;
		var request;

		function sendTalkDay(phn, msg) {
			var userId = "danielps";
			var message_type = "at";
			var phn = phn;
			var profile = "ba3066c326f54ab9bf9fc8e5153eb87d280e4eae";
			var tmplId = "daniel06";
			var msg = msg;

			// 버튼이 있을 경우에만 순서대로 입력(url_pc,url_mobile은 웹링크만 입력, scheme_ios,scheme_android는 앱링크만 입력)
			var button1 = {"type":"WL","name":"신청완료","url_pc":"http://fund.suhbs.com","url_mobile":"http://fund.suhbs.com"};
			// var button2 = {"type":"버튼타입","name":"버튼이름","url_pc":"웹 PC링크","url_mobile":"웹 모바일링크","scheme_ios":"앱 ios스킴","scheme_android":"앱 android스킴"};
			// var button3 = {"type":"버튼타입","name":"버튼이름","url_pc":"웹 PC링크","url_mobile":"웹 모바일링크","scheme_ios":"앱 ios스킴","scheme_android":"앱 android스킴"};
			// var button4 = {"type":"버튼타입","name":"버튼이름","url_pc":"웹 PC링크","url_mobile":"웹 모바일링크","scheme_ios":"앱 ios스킴","scheme_android":"앱 android스킴"};
			// var button5 = {"type":"버튼타입","name":"버튼이름","url_pc":"웹 PC링크","url_mobile":"웹 모바일링크","scheme_ios":"앱 ios스킴","scheme_android":"앱 android스킴"};
	 
			var sendArray = [];
			var sendObj = {};

			sendObj['userId'] = userId;
			sendObj['message_type'] = message_type;
			sendObj['phn'] = phn;
			sendObj['profile'] = profile;
			sendObj['tmplId'] = tmplId;
			sendObj['msg'] = msg;
			sendObj['smsKind'] = 'L';
			sendObj['msgSms'] = '';
			sendObj['smsSender'] = '821051580999';
			sendObj['smsLmsTit'] = '821051580999';
			//sendObj['button1'] = button1;

			// 버튼이 있을 경우
			// sendObj['button1'] = button1;
			// sendObj['button2'] = button2;
			// sendObj['button3'] = button3;
			// sendObj['button4'] = button4;
			// sendObj['button5'] = button5;

			sendArray.push(sendObj);

			// 객체를 생성한다.
			request = new XMLHttpRequest();
			request.open(request_method, request_url, request_isAsync);
			request.setRequestHeader('Content-Type', 'application/json; charset=UTF-8');
			request.onreadystatechange = handleResponse;

			// 서버로 전송한다.
			//writeResponse("");
			var sendData = JSON.stringify(sendArray);        
			request.send(sendData);
		}

		function handleResponse() {        
			if (request.readyState == 4) {
				// the request is complete
				if (request.status == 200) {
					// the response is ready
					//writeResponse(request.responseText);
				}
			}
		}

		function writeResponse(response) {
			document.getElementById("response").value = response;
		}
	</script>
	
	<%-- <div id="popup_layer_15" class="popup-wrap-box ui-draggable ui-draggable-handle">
	
		<!-- 레이어 팝업 시작 -->
		<div id="pop-wrap">
			<div class="pop-inner">
				<div class="pop-container">
					<div><a href="http://www.danielps.co.kr"><img alt="" src="${pageContext.request.contextPath}/resources/img/main/popup_20200920.jpg"></a></div>
				</div>
				<div class="pop-controller">
					<label>
						<input type="checkbox" onclick="close_popup('popup_layer_15','15','7','Y')">
						<!-- <svg class="svg-inline--fa fa-times fa-w-12" aria-hidden="true" data-fa-processed="" data-prefix="fas" data-icon="times" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512"><path fill="currentColor" d="M323.1 441l53.9-53.9c9.4-9.4 9.4-24.5 0-33.9L279.8 256l97.2-97.2c9.4-9.4 9.4-24.5 0-33.9L323.1 71c-9.4-9.4-24.5-9.4-33.9 0L192 168.2 94.8 71c-9.4-9.4-24.5-9.4-33.9 0L7 124.9c-9.4 9.4-9.4 24.5 0 33.9l97.2 97.2L7 353.2c-9.4 9.4-9.4 24.5 0 33.9L60.9 441c9.4 9.4 24.5 9.4 33.9 0l97.2-97.2 97.2 97.2c9.3 9.3 24.5 9.3 33.9 0z"></path></svg> -->
						<i class="fas fa-times"></i> 일주일간 공지창 띄우지 않음
					</label>
					<a href="javascript:;" onclick="Layer_Close('', 'popup_layer_15')">
						<!-- <svg class="svg-inline--fa fa-times-circle fa-w-16" aria-hidden="true" data-fa-processed="" data-prefix="fas" data-icon="times-circle" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path fill="currentColor" d="M256 8C119 8 8 119 8 256s111 248 248 248 248-111 248-248S393 8 256 8zm121.6 313.1c4.7 4.7 4.7 12.3 0 17L338 377.6c-4.7 4.7-12.3 4.7-17 0L256 312l-65.1 65.6c-4.7 4.7-12.3 4.7-17 0L134.4 338c-4.7-4.7-4.7-12.3 0-17l65.6-65-65.6-65.1c-4.7-4.7-4.7-12.3 0-17l39.6-39.6c4.7-4.7 12.3-4.7 17 0l65 65.7 65.1-65.6c4.7-4.7 12.3-4.7 17 0l39.6 39.6c4.7 4.7 4.7 12.3 0 17L312 256l65.6 65.1z"></path></svg> -->
						<i class="fas fa-times-circle"></i>
					</a>
				</div>
			</div>
		</div>
		<!-- 레이어 팝업 끝 -->
		
		<script>
			function close_popup(id, PIdx, expire, user){
				expire = (expire == "") ? 1 : expire;
		
				if(user == "Y")		set_cookie(id, "done", 24 * expire);
		
				if(id)	Layer_Close('', id);
				else	Layer_Close();
			}
		
			function set_cookie(name, value, expire) {
				var today = new Date();
				today.setTime(today.getTime() + (60 * 60 * 1000 * expire)); // hours
				//today.setDate(today.getDate() + expire); // days
		
				if (expire == null) var expires_str = "";
				else var expires_str = "; expires=" + today.toGMTString() + ";";
				document.cookie = name + "=" + escape(value) + "; path=/" + expires_str;
			}
		</script>
		<link href="${pageContext.request.contextPath}/resources/css/style.popup.css" rel="stylesheet" type="text/css">
		<script>
			$(function(){
				
				var now_url = window. location.href;
				if(now_url.indexOf("menu")>-1){
					$("#popup_layer_15").css("display","none");
					console.log("sub");
				}else{
					var $Layer = "popup_layer_15";
					
					$("#"+$Layer).css({
						"position" : "absolute",
						"z-index" : "9000",
						"top" : "0px",
						"left" : "0px"
					}).draggable({
						cancel : ".title",
						cursor : "move"
					}).show();
				}
			});
		</script>
	</div> --%>
	
	<%-- 
	<div id="popup_layer_14" class="popup-wrap-box ui-draggable ui-draggable-handle">
	
		<!-- 레이어 팝업 시작 -->
		<div id="pop-wrap">
			<div class="pop-inner">
				<div class="pop-container">
					<div><a href="http://www.danielps.co.kr/m/menu09_06read?page=1&perPageNum=12&searchType&keyword&no=53"><img alt="" src="${pageContext.request.contextPath}/resources/uploadEvent/cbac2ca0-7461-480f-a71d-790ee97e3155_[다니엘성형외과]여름방학이벤트_성형부문(최종).jpg"></a></div>
				</div>
				<div class="pop-controller">
					<label>
						<input type="checkbox" onclick="close_popup('popup_layer_14','14','7','Y')">
						<!-- <svg class="svg-inline--fa fa-times fa-w-12" aria-hidden="true" data-fa-processed="" data-prefix="fas" data-icon="times" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512"><path fill="currentColor" d="M323.1 441l53.9-53.9c9.4-9.4 9.4-24.5 0-33.9L279.8 256l97.2-97.2c9.4-9.4 9.4-24.5 0-33.9L323.1 71c-9.4-9.4-24.5-9.4-33.9 0L192 168.2 94.8 71c-9.4-9.4-24.5-9.4-33.9 0L7 124.9c-9.4 9.4-9.4 24.5 0 33.9l97.2 97.2L7 353.2c-9.4 9.4-9.4 24.5 0 33.9L60.9 441c9.4 9.4 24.5 9.4 33.9 0l97.2-97.2 97.2 97.2c9.3 9.3 24.5 9.3 33.9 0z"></path></svg> -->
						<i class="fas fa-times"></i> 일주일간 공지창 띄우지 않음
					</label>
					<a href="javascript:;" onclick="Layer_Close('', 'popup_layer_14')">
						<!-- <svg class="svg-inline--fa fa-times-circle fa-w-16" aria-hidden="true" data-fa-processed="" data-prefix="fas" data-icon="times-circle" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path fill="currentColor" d="M256 8C119 8 8 119 8 256s111 248 248 248 248-111 248-248S393 8 256 8zm121.6 313.1c4.7 4.7 4.7 12.3 0 17L338 377.6c-4.7 4.7-12.3 4.7-17 0L256 312l-65.1 65.6c-4.7 4.7-12.3 4.7-17 0L134.4 338c-4.7-4.7-4.7-12.3 0-17l65.6-65-65.6-65.1c-4.7-4.7-4.7-12.3 0-17l39.6-39.6c4.7-4.7 12.3-4.7 17 0l65 65.7 65.1-65.6c4.7-4.7 12.3-4.7 17 0l39.6 39.6c4.7 4.7 4.7 12.3 0 17L312 256l65.6 65.1z"></path></svg> -->
						<i class="fas fa-times-circle"></i>
					</a>
				</div>
			</div>
		</div>
		<!-- 레이어 팝업 끝 -->
		
		<script>
			function close_popup(id, PIdx, expire, user){
				expire = (expire == "") ? 1 : expire;
		
				if(user == "Y")		set_cookie(id, "done", 24 * expire);
		
				if(id)	Layer_Close('', id);
				else	Layer_Close();
			}
		
			function set_cookie(name, value, expire) {
				var today = new Date();
				today.setTime(today.getTime() + (60 * 60 * 1000 * expire)); // hours
				//today.setDate(today.getDate() + expire); // days
		
				if (expire == null) var expires_str = "";
				else var expires_str = "; expires=" + today.toGMTString() + ";";
				document.cookie = name + "=" + escape(value) + "; path=/" + expires_str;
			}
		</script>
		<link href="${pageContext.request.contextPath}/resources/css/style.popup.css" rel="stylesheet" type="text/css">
		<script>
			$(function(){
				
				var now_url = window. location.href;
				if(now_url.indexOf("menu")>-1){
					$("#popup_layer_14").css("display","none");
					console.log("sub");
				}else{
					var $Layer = "popup_layer_14";
					
					$("#"+$Layer).css({
						"position" : "absolute",
						"z-index" : "9000",
						"top" : "0px",
						"left" : "0px"
					}).draggable({
						cancel : ".title",
						cursor : "move"
					}).show();
				}
			});
		</script>
	</div> --%>
</a>