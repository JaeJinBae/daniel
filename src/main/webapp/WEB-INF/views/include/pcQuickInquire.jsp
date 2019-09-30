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
		alert(content.length);
		var info = {"name":name, "phone":phone, "clinic_type":clinic_type, "content":content, "regdate":regdate, "access_url":access_url};
		quickInquireRegister(info);
	});
	
});
</script>
<!-- 빠른상담 신청폼 -->
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
					<textarea name="i_content" id="i_content" data-name="상담내용" placeholder="상담내용과 전화가능 시간대를 입력해 주세요"></textarea>

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