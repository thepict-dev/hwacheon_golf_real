<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="../include/head.jsp" %>
<%@include file="../include/header.jsp" %> 
<div class="sub-container">
	<div class="sub-visual"><h2>인사말</h2></div>
	<%@include file="../include/breadcrumb.jsp" %>
	<div class="tour-wrap">
		<div class="tour-top">
			<select class="int webhide" id="infoSelect">
				<option value="/tour/masusalmon?type=1">얼음나라화천 산천어축제</option>
				<option value="/tour/jjokbae?type=2">물의나라화천 쪽배축제</option>
				<option value="/tour/tomato?type=3">>화천토마토축제</option>
				<option value="/tour/info?type=4">화천 관광정보</option>
			</select>
			<ul class="tour-tab webshow noto">
				<li><a href="/tour/masusalmon.do">얼음나라화천 산천어축제</a></li>
				<li><a href="/tour/jjokbae.do">물의나라화천 쪽배축제</a></li>
				<li class="active"><a href="/tour/tomato.do">화천 토마토축제</a></li>
				<li><a href="/tour/info.do">화천 관광정보</a></li>
			</ul>
		</div>
		<div class="tour-bottom">
			<div class="tour-con">
				<img src="/_user/img/tour-img03.jpg" alt="">
		        <p class="tour-txt noto">
				    스페인의 작은 마을에서 시작된 토마토축제가 화천의 사창리에서도 시작되었는데, 토마토의 브랜드 가치와 수익증대를 위해 열리기 시작했다고 합니다. 축제에 사용할 토마토는 상품가치가 떨어지는 것을 모은 것과 이벤트용으로 모아 50여톤 가까이의 토마토가 사용된다고 합니다. 축제의 하이라이트는 "황금반지를 찾아라"인데 수많은 토마토중 황금반지가 들어있는 토마토를 찾는 것입니다.
                </p>
                <div class="board-btn-wrap noto">
                    <a href="#lnk" class="board-btn bg-blue"><span>자세히보기</span></a>
                </div>
			</div>
		</div>
	</div>
</div>
<%@include file="../include/footer.jsp" %> 