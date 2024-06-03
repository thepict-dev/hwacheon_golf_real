<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../include/head.jsp" %>
<%@include file="../include/header.jsp" %> 

<%
	session.setAttribute("returnUrl", "/reservation/reservation.do");
	if(sb.getMemberId() == null){
%>
		<script>
			alert("로그인 후 이용 가능합니다.");
			location.href = "/login.do";
		</script>
<%
	}
%>


<div class="sub-container">
	<div class="sub-visual"><h2>인사말</h2></div>
	<%@include file="../include/breadcrumb.jsp" %>
	<%@ page import="java.util.List"%>

	<form name="frm" id="frm" method="post" action="">
		<input type="hidden" name="eventId" id="eventId" value="">
		<input type="hidden" name="eventTimeId" id="eventTimeId" value="">
		<input type="hidden" name="eventFlag" id="eventFlag" value="event01">
		<input type="hidden" name="reqCnt" id="reqCnt" value="">
	</form>

        <div class="calendar-wrap" data-aos="fade-up" data-delay="2000" data-aos-duration="1500">
          <p class="cal-tit">화천산천어파크골프장 예약</p>
          <span class="cal-sub noto">화천산천어파크골프장은 별다른 로그인 없이 <span class="mobbr">연락처만으로 간편하게 예약하실 수 있습니다.</span></span>
          <div class="calendar reservation-cal noto">
              <p class="letter-top">Calender</p>
              <div id="exhibition"></div>
              <script>
                  document.addEventListener('DOMContentLoaded', function() {
                      var calendarEl = document.getElementById('exhibition');

                      var calendar = new FullCalendar.Calendar(calendarEl, {
                          aspectRatio: 1.5,
                          plugins: [ 'interaction', 'dayGrid'],
                          header: {
                              left: 'prevYear, prev',
                              center: 'title',
                              right: 'next, nextYear'
                          },
                          locale: 'ko',
                          navLinks: false,
                          eventLimit: true,
                          events: [
                        	  	{
									title: '숫자',
									start: '2024-06-02',
									url: 'javascript:fn_apply();'
								}
                          ],
                      });

                      calendar.render();

                      $('.fc-day-top').each(function(){
                          if($(this).is('.fc-today')) return false;
                          $(this).addClass('fc-before-today');
                      })
                  });
              </script>
              <div class="cal-info">
                <p><em class="star">*</em> 일 최대 예약 가능 인원은 200명 입니다.</p>
                <p><em class="star">*</em> 일자별 예약 가능 인원이 표시됩니다.</p>
              </div>
          </div>
        </div>
      </div>
	
</div>
<%@include file="../include/footer.jsp" %> 