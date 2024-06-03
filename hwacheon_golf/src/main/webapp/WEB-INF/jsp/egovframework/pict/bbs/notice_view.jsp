<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@include file="../include/head.jsp" %>
<%@include file="../include/header.jsp" %> 
<div class="sub-container">
	<div class="sub-visual"><h2>인사말</h2></div>
	<%@include file="../include/breadcrumb.jsp" %>
	<div class="calendar-wrap noto">
			<div data-aos="fade-up" data-delay="2000" data-aos-duration="1500">
				<div class="boardview">
					<div class="boardview-top">
						<div class="boardview-tit">
						<em class="ico-noti type1">공지</em>
						<h3>${pictVO.nttSj}</h3></div>
						<div class="boardview-info">
							<p><span class="ico-time"></span>${fn:substring(pictVO.frstRegistPnttm,0,11)}</p>
							<p><i class="ico-view"></i>${pictVO.rdcnt}</p>
						</div>
					</div>
					<div class="boardview-con">
						<div class="boardview-file">
							<ul>
							<!-- 
								<li><a href="javascript:fn_egov_downFile('file_id','file_sn')"><span class="ico-file"></span><span class="file-name">file_name</span></a></li>
								 -->
							</ul>
						</div>
						<p>${pictVO.nttCn}</p>
					</div>
				</div>
				<div class="btn-wrap board-btn">
					<button type="button" onclick="javascript:history.back();" class="brown">목록</button>
				</div>

			</div>
		</div>
	</div>
	
</div>
<%@include file="../include/footer.jsp" %> 