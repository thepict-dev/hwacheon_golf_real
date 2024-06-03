<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="../include/head.jsp" %>
<%@include file="../include/header.jsp" %> 
<%
	session.setAttribute("returnUrl", "/reservation/confirm.do");
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

	<script>
		function fn_cancel(v_applyId){
			if(confirm("취소 하시겠습니까?")){
				$("#applyId").val(v_applyId);
				$("#statusFlag").val("N");
				$("#frm").attr("action","/_event/statusCancel.do");
				$("#frm").submit();
			}
		}
	</script>
	<form action="" id="frm" name="frm" method="post">
		<input type="hidden" name="applyId" id="applyId" value="" >
		<input type="hidden" name="statusFlag" id="statusFlag" value="" >
	</form>
	
	
	  <div class="calendar-wrap">
	    <p class="cal-tit aos-init aos-animate" data-aos="fade-up" data-delay="2000" data-aos-duration="1500">신청현황</p>
	    <div class="tbl-wrap scroll noto">
	      <table class="tbl type1 tc">
	        <caption class="blind">사용일, 티업시간, 인원, 연락처, 숙소, 상태, 취소, 예약신청일 순으로 안내합니다.</caption>
	        <colgroup>
	          <col style="width: 10%">
	          <col style="width: 10%">
	          <col style="width: 12.5%">
	          <col style="width: 15%">
	          <col style="width: 15%">
	          <col style="width: 12.5%">
	          <col style="width: 10%">
	          <col style="width: 15%">
	        </colgroup>
	        <thead>
	          <tr>
	            <th>사용일</th>
	            <th>티업시간</th>
	            <th>인원</th>
	            <th>연락처</th>
	            <th>숙소</th>
	            <th>상태</th>
	            <th>취소</th>
	            <th>예약신청일</th>
	          </tr>
	        </thead>
	        <tbody>
				<c:forEach var="result" items="${applyList}" varStatus="status">
					<tr style="height: 61px;">
						<td>${result.eventDate }</td>
						<td><c:if test="${result.ampm eq 'AM'}">오전</c:if><c:if test="${result.ampm ne 'AM'}">오후</c:if></td>
						<td>${result.adultNum }</td>
						<td>${result.phone }</td>
						<td>${result.address }</td>
						<td>
							<c:choose>
								<c:when test="${result.statusFlag eq 'Y'}">예약확정</c:when>
								<c:when test="${result.statusFlag eq 'N'}">취소</c:when>
								<c:otherwise>승인대기</c:otherwise>
							</c:choose>
						</td>
						<td>
							<c:if test="${result.statusFlag eq 'D'}">
								<a href="javascript:void(0)" onclick="javascript:fn_cancel('${result.applyId }');" class="cancel-btn">취소</a>
							</c:if>
						</td>
						<td>${result.regDate }</td>
					</tr>
				</c:forEach>
				<c:if test="${fn:length(applyList) == 0}">
					<tr>
						<td>신청내역이 없습니다.</td>
					</tr>
				</c:if>
	        </tbody>
	      </table>
	    </div>
	  </div>
	
</div>
<%@include file="../include/footer.jsp" %> 