<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="../include/head.jsp" %>
<%@include file="../include/header.jsp" %> 
<div class="sub-container">
	<div class="sub-visual"><h2>인사말</h2></div>
	<%@include file="../include/breadcrumb.jsp" %>
	<div class="direction-wrap">
	  <div class="dir-top" data-aos="fade-up" data-delay="2000" data-aos-duration="1500">
		<p class="col-green">화천 산천어 파크골프장은<br>화천군 하남면에 위치해 있습니다.</p>
		<span class="this-address noto">강원도 화천군 하남면 춘화로 3061-17</span>
	  </div>
	  <div class="dir-map" data-aos="fade-up" data-delay="2000" data-aos-duration="1500" id="map">

	  </div>
	  <ul data-aos="fade-up" data-delay="2000" data-aos-duration="1500">
		<li>
		  <div class="dir-list">
			<p class="dir-tit">네비게이션 이용시</p>
			<div class="dir-detail noto"><span>명칭검색</span> 화천 산천어 파크골프장</div>
			<div class="dir-detail noto"><span>주소검색</span> 강원도 화천군 하남면 춘화로 3061-17</div>
			<div class="bg-white noto"><span>TIP</span> 수도권에서 목적지 설정시 경유지로 고속도로 이용, (춘천고속도로에서 국도 이용시 춘천댐 등) 설정해주세요</div>
		  </div>
		</li>
		<li>
		  <div class="dir-list">
			<p class="dir-tit">자가용</p>
			<div class="dir-detail noto"><span>경춘고속도로 이용</span> - (약 1시간 20분 소요)</div>
			<div class="dir-detail noto"><span>전국각지역 </span>  - 춘천(407번 지방도) - 화천 산천어 파크 골프장</div>
			<div class="dir-detail noto"><span>포천 </span>  - 광덕계곡, 사창리 - 화천읍 - 화천 산천어 파크골프장</div>
		  </div>
		</li>
		<li>
		  <div class="dir-list">
			<p class="dir-tit">버스</p>
			<div class="dir-detail noto">전국 시외 / 고속버스터미널 → 춘천 시외버스터미널 → 화천 서울 동서울터미널에서 화천행 버스 이용, 또는 춘천행 버스를 타고 춘천에서 다시 화천행 버스를 이용</div>
			<div class="bg-white noto">※ 시외버스터미널에서 택시 이용 (4.5km)</div>
		  </div>
		</li>
		<li>
		  <div class="dir-list">
			<p class="dir-tit">지하철</p>
			<div class="dir-detail noto">약 1시간 20분 소요 / 서울 상봉역 - 춘천역</div>
			<div class="dir-detail noto"><span>ITX </span>  1시간 소요 / 용산 - 춘천역</div>
			<div class="dir-detail noto"><span>남춘천역 </span> 육교를 건너 춘천시외버스터미널까지 도보로 5~10분</div>
			<div class="dir-detail noto"><span>춘천역 </span> 길건너편 정류장 화천행 시외버스 탑승</div>
		  </div>
		</li>
	  </ul>
	</div>

	<!-- <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6f8098b0177751d61041ee041a87403e"></script> -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=13ffd9b7d5d69901fb96703577c15ad3"></script>
	<script>
		var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
		var options = { //지도를 생성할 때 필요한 기본 옵션
			center: new kakao.maps.LatLng(38.0759765, 127.688072), //지도의 중심좌표.
			level: 2 //지도의 레벨(확대, 축kli소 정도)
		};

		var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
		
		var marker = new kakao.maps.Marker({ position :  new kakao.maps.LatLng(38.0759765, 127.688072) });

		marker.setMap(map);
		map.setZoomable(false);	//확대축소 기능 OFF

		// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
		var zoomControl = new kakao.maps.ZoomControl();
		map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
	</script>
      </div>
	
</div>
<%@include file="../include/footer.jsp" %> 