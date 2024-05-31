<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="../include/head.jsp" %>
<%@include file="../include/header.jsp" %> 
<div class="sub-container">
	<div class="sub-visual"><h2>인사말</h2></div>
	<%@include file="../include/breadcrumb.jsp" %>
	<form action="/tour/restaurant" name="listFrm" id="listFrm" method="post">
		<input type="hidden" name="bbsId" value="BBSMSTR_000000000031" />
		<input type="hidden" id="pageIndex" name="pageIndex" value="1" />
		<input type="hidden" id="flag" name="flag" value="list" />
		<input type="hidden" id="nttId" name="nttId" value="0" />
		<input type="hidden" id="searchCate1" name="searchCate1" value="" />
	</form>
	<div class="tour-wrap">
		<div class="tour-bottom">
			<div class="tour-con noto">
		        <div class="flex-between">
			        <p class="left-txt">전체보기</p>
			        <p class="post">총 <span class="total-post">0</span>건의 숙박업소가 있습니다.</p>
		        </div>
		        <div class="tbl-wrap px30">
		        	<table class="tbl03 type2 tc">
			        	<colgroup>
							<col style="width: 10%;">
							<col style="width: 10%;">
							<col style="width: 30%;">
							<col style="width: 45%;">
							<col style="width: 15%;">
			            </colgroup>
			            <tbody>
							<tr>
								<td>
								<!-- 모바일에서 이 td만 표출이 됩니다. -->
									<p class="type">하남면</p>
									<div class="flex">
										<p class="tit">샘골민박</p>
										<p>0.2km</p>
									</div>
									<div class="flex">
										<p class="loca">강원도 화천군 하남면 거례길 77-4</p>
										<p class="tel">010-2766-4670</p>
									</div>
								</td>
								<td class="colnone"><p class="distance">0.2km</p></td>
								<td class="colnone tit"><p class="data-name">샘골민박</p></td>
								<td class="colnone"><p class="location">강원도 화천군 하남면 거례길 77-4</p></td>
								<td class="colnone"><p class="number">010-2766-4670</p></td>
							</tr>
			            </tbody>
		        	</table>
		        	<div class="pager">
						<span class="pager-numlist">
							<a href="#lnk" class="pager-num active"><span class="screen-out">현재 페이지</span>1</a>
							<a href="#lnk" onclick="fn_list(2);return false; " class="pager-num">2</a>
							<a href="#lnk" onclick="fn_list(3);return false; " class="pager-num">3</a>
							<a href="#lnk" onclick="fn_list(4);return false; " class="pager-num">4</a>
							<a href="#lnk" onclick="fn_list(5);return false; " class="pager-num">5</a>
						</span>
					</div>
		        </div>
			</div>
		</div>
	</div>
</div>
<%@include file="../include/footer.jsp" %> 