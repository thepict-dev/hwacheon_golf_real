<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<div class="wrapper">
	<header class="header">
		<div class="header-util">
			<ul>
				<li><a href="https://www.ihc.go.kr/www/index.do" title="새창열림" target="_blank">화천군청</a></li>
				
					<li class="login"><a href="/_member/logout.do">로그아웃</a></li>
				
					<li class="login"><a href="/login">로그인</a></li>
				
			</ul>
		</div>
		<div class="header-pos">
			<div class="weather">
				<p class="date" id="toDay"></p>
				<p class="ico" id="weatherType"></p>
			</div>
			<div class="inner-header">
				<h1 class="logo"><a href="/"><img src="/_user/img/logo.svg" alt=""></a></h1>
				<div class="gnb-wrap">
					<ul>
						<li>
							<a href="#lnk">파크골프장</a>
							<div class="dep2">
								<ul>
									<li><a href="/parkgolf/greeting.do">인사말</a></li>
									<li><a href="/parkgolf/info.do">소개</a></li>
									<li><a href="/parkgolf/map.do">오시는길</a></li>
									<li><a href="/parkgolf/rules.do">이용안내</a></li>
									<li><a href="/parkgolf/hole.do">코스소개</a></li>
									<li><a href="/parkgolf/facilities.do">부대시설</a></li>
									
								</ul>
							</div>
						</li>
						<li>
							<a href="#lnk">예약안내</a>
							<div class="dep2">
								<ul>
									<li><a href="/parkgolf/reservation.do">예약하기</a></li>
									<li><a href="/parkgolf/confirm.do">예약확인</a></li>
								</ul>
							</div>
						</li>
						<li>
							<a href="#lnk">정보마당</a>
							<div class="dep2">
								<ul>
									<li><a href="/bbs/notice.do">공지사항</a></li>
									<li><a href="/bbs/gallery.do">갤러리</a></li>
									<li><a href="/bbs/inquiry.do">문의하기</a></li>
								</ul>
							</div>
						</li>
						<li>
							<a href="#lnk">화천관광</a>
							<div class="dep2">
								<ul>
									<li><a href="/tour/masusalmon.do">산천어축제</a></li>
									<li><a href="/tour/jjokbae.do">쪽배축제</a></li>
									<li><a href="/tour/tomato.do">토마토축제</a></li>
									<li><a href="/tour/info.do">화천 관광정보</a></li>
									<li><a href="/tour/restaurant.do">음식점</a></li>
									<li><a href="/tour/stay.do">숙박업</a></li>
								</ul>
							</div>
						</li>
					</ul>
				</div>
				<div class="gnb-btn">
					<button type="button">메뉴 열기</button>
				</div>
			</div>
		</div>
	</header>