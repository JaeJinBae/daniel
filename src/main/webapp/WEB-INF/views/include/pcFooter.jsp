<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<footer id="footer">
	<div class="inner">
		<!-- fnb 시작 -->
		<ul class="fnb">
			<li>
				<a href="${pageContext.request.contextPath}/menu01_01">다니엘 소개</a>
			</li>
			<li>
				<a href="${pageContext.request.contextPath}/menu01_03">찾아오시는 길</a>
			</li>
			<li>
				<a href="${pageContext.request.contextPath}/personal">개인정보보호정책</a>
			</li>
			<li>
				<a href="${pageContext.request.contextPath}/agree">이용약관</a>
			</li>
			<li>
				<a href="${pageContext.request.contextPath}/menu09_02">온라인상담</a>
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
<!-- <script language="javascript">
	var _AceGID=(function(){var Inf=['dgc12.acecounter.com','8080','AP4T42369817671','CW','0','NaPm,Ncisy','ALL','0']; var _CI=(!_AceGID)?[]:_AceGID.val;var _N=0;var _T=new Image(0,0);if(_CI.join('.').indexOf(Inf[3])<0){ _T.src =( location.protocol=="https:"?"https://"+Inf[0]:"http://"+Inf[0]+":"+Inf[1]) +'/?cookie'; _CI.push(Inf);  _N=_CI.length; } return {o: _N,val:_CI}; })();
	var _AceCounter=(function(){var G=_AceGID;var _sc=document.createElement('script');var _sm=document.getElementsByTagName('script')[0];if(G.o!=0){var _A=G.val[G.o-1];var _G=(_A[0]).substr(0,_A[0].indexOf('.'));var _C=(_A[7]!='0')?(_A[2]):_A[3];var _U=(_A[5]).replace(/\,/g,'_');_sc.src=(location.protocol.indexOf('http')==0?location.protocol:'http:')+'//cr.acecounter.com/Web/AceCounter_'+_C+'.js?gc='+_A[2]+'&py='+_A[4]+'&gd='+_G+'&gp='+_A[1]+'&up='+_U+'&rd='+(new Date().getTime());_sm.parentNode.insertBefore(_sc,_sm);return _sc.src;}})();
</script>
<noscript><img src='http://dgc12.acecounter.com:8080/?uid=AP4T42369817671&je=n&' border='0' width='0' height='0' alt=''></noscript> -->
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