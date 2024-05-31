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
				<li class="active"><a href="/tour/jjokbae.do">물의나라화천 쪽배축제</a></li>
				<li><a href="/tour/tomato.do">화천 토마토축제</a></li>
				<li><a href="/tour/info.do">화천 관광정보</a></li>
			</ul>
		</div>
		<div class="tour-bottom">
			<div class="tour-con">
				<img src="/_user/img/tour-img02.jpg" alt="">
                <p class="tour-txt noto">
                 	물 좋은 화천에 오면 모든 일이 술술 잘 풀린다는 의미를 가진 수리 화천이라는 슬로건 아래 다양한 여름체험 프로그램으로 이루어졌는데 이중에서는 수상 자전거, 카약, 야외 물놀이장, 슬라럼체험장, 나뭇잎·조각배 만들기, 강변 물놀이장, 하늘가르기 등 체험행사도 열립니다. 특히 쪽배축제의 백미인 미니창작쪽배콘테스트는 기발한 상상력의 배를 만들어 참가하여 성황을 이룹니다.
                </p>
                <div class="board-btn-wrap noto">
                    <a href="#lnk" class="board-btn bg-blue"><span>자세히보기</span></a>
                </div>
			</div>
		</div>
	</div>
</div>
<%@include file="../include/footer.jsp" %> 