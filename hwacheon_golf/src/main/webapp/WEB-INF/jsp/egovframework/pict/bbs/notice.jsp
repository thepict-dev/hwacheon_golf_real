<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@include file="../include/head.jsp" %>
<%@include file="../include/header.jsp" %> 
<div class="sub-container">
	<div class="sub-visual"><h2>인사말</h2></div>
	<%@include file="../include/breadcrumb.jsp" %>
	<style type="text/css">
		.paginations{
		    display: flex;
	  			justify-content: center;
		    column-gap: 5px;
		    width: 100%;
		    max-width: 513px;
		    margin: 0 auto;
		    padding: 25px 0 30px 0;
		}
		.paginations li{
		    display: flex;
		    justify-content: center;
		    align-items: center;
		    width: 32px;
		    height: 32px;
		    border-radius: 8px;
		    border: 1px solid #F1F1F1;
		    font-size: 13px;
		    font-weight: 600;
		    font-family: var(--fn-open);
		}
		.paginations li.cut{
		    border: 0;
		}
		.paginations li a{
		    display: flex;
		    justify-content: center;
		    align-items: center;
		    width: 100%;
		    height: 100%;
		    color: #333;
		    border-radius: 8px;
		    text-decoration: none;
		}
		.paginations li.active a{
		    color: #fff;
		    background-color: #0575E6;
		}
	</style>
	<div class="calendar-wrap noto">
			<div data-aos="fade-up" data-delay="2000" data-aos-duration="1500">
				<form action="" name="listFrm" id="listFrm" method="get">
					<fieldset>
						<legend class="screen-out">검색어 입력 폼</legend>
						<div class="search-box tblselect">
							<select name="searchCnd" id="searchCnd" class="sel">
								<option value="ALL" <c:if test="${pictVO.searchCnd eq 'ALL' || pictVO.searchCnd eq ''}">selected</c:if>>전체</option>
								<option value="NTT_SJ" <c:if test="${pictVO.searchCnd eq 'NTT_SJ'}">selected</c:if>>제목</option>
								<option value="NTT_CN" <c:if test="${pictVO.searchCnd eq 'NTT_CN'}">selected</c:if>>내용</option>
							</select>
							<div class="input-box">
								<label>
									<input type="text" id="searchWrd" name="searchWrd" placeholder="내용을 입력해주세요." value="${pictVO.searchWrd}">
								</label>
								<button type="button" onclick="search()" class="btn-search">검색</button>
							</div>
						</div>
					</fieldset>
				</form>
				<div class="section-inner">
					<p class="post">총 <span class="total-post">${totalCnt}</span>건의 게시물이 있습니다.</p>
					<div class="tbl-wrap">
						<table class="tbl03 tc">
							<caption class="blind">번호, 제목, 첨부파일, 등록일, 조회 순으로 안내합니다.</caption>
							<colgroup>
								<col class="col wid90 colnone" width="10%">
								<col class="col " width="*%">
								<col class="col wid120 colnone" width="10%">
								<col class="col colnone" width="15%">
								<col class="col wid120 colnone" width="15%">
								<col class="col colnone" width="15%">
							</colgroup>
							<tbody>
								<c:if test="${totalCnt <= 0 }">
									<tr>
										<td colspan="6">등록된 게시글이 없습니다.</td>
									</tr>
								</c:if>
								<c:if test="${totalCnt > 0 }">
									<c:forEach var="notice_list" items="${notice_list}" varStatus="status">
										<tr>
											<td class="col wid90 colnone">
												<c:if test="${notice_list.noticeAt eq 'Y' }">
													<em class="ico-noti">공지</em>
												</c:if>
												<c:if test="${notice_list.noticeAt ne 'Y' }">
													<c:if test="${pictVO.pageNumber eq 1}">
														${totalCnt - status.index}			
													</c:if>
													<c:if test="${pictVO.pageNumber ne 1}">
														${totalCnt - (status.index +  ((pictVO.pageNumber - 1) * 10))}
													</c:if>
												</c:if>
											</td>
											<td class="col wid* post-tit tl">
												<a href="/bbs/notice_view.do?nttId=${notice_list.nttId}" class="dot">${notice_list.nttSj}</a>
											</td>
											<td class="col colnone">
												<c:if test="${notice_list.atchFileId ne null && notice_list.atchFileId ne ''  && notice_list.atchFileId ne undefined}">
													<i class="ico-addfile">첨부파일</i>
												</c:if>
											</td>
											<td class="col colnone">${notice_list.ntcrNm}</td>
											<td class="col day colnone">${fn:substring(notice_list.frstRegistPnttm,0,11)}</td>
											<td class="col colnone"><i class="ico-view"></i>${notice_list.rdcnt}</td>
										</tr>
									</c:forEach>
								</c:if>
								
							</tbody>
						</table>
						<ul class="paginations">
							<c:if test="${pictVO.pageNumber ne 1}">
								<li><a href="/bbs/notice.do?search_text=${param.search_text}&pageNumber=1"><img src="/_user/img/First.png" alt=""></a></li>
								<li><a href="/bbs/notice.do?search_text=${param.search_text}&pageNumber=${pictVO.pageNumber - 10 < 1 ? 1 : pictVO.pageNumber - 10}"><img src="/_user/img/Prev.png" alt=""></a></li>
							</c:if>	
						
							<c:forEach var="i" begin="${pictVO.startPage}" end="${pictVO.endPage}">
								<c:if test="${i eq pictVO.pageNumber}">
									<li class="active"><a href="/bbs/notice.do?search_text=${param.search_text}&pageNumber=${i}" >${i}</a></li>
								</c:if>
								<c:if test="${i ne pictVO.pageNumber}">
									<li><a href="/bbs/notice.do?search_text=${param.search_text}&pageNumber=${i}" >${i}</a></li>
								</c:if>
							</c:forEach>	
					
							<c:if test="${pictVO.lastPage ne pictVO.pageNumber}">
								<li><a href="/bbs/notice.do?search_text=${param.search_text}&pageNumber=${pictVO.pageNumber + 10 > pictVO.lastPage ?  pictVO.lastPage : pictVO.pageNumber + 10}"><img src="/_user/img/Next.png" alt=""></a></li>
								<li><a href="/bbs/notice.do?search_text=${param.search_text}&pageNumber=${pictVO.lastPage}"><img src="/_user/img/Last.png" alt=""></a></li>
							</c:if>
						</ul>

					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		function search(){
			$("#listFrm").attr("action", "/bbs/notice.do");
			$("#listFrm").submit();
		}
	</script>
</div>
<%@include file="../include/footer.jsp" %> 