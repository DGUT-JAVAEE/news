<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="/myTagLib" prefix="myTag"%>

<!doctype html>
<html>
 <head><link href="${pageContext.request.contextPath }/css/1.css" rel="stylesheet" type="text/css"></head>
   <body>
   <jsp:include page="/head.jsp"></jsp:include>
	<div class="news">
		<div class="newscenter" name="news1">
			<table class="invisibleTable">
				<tbody>
					<tr class="newsColumn">
						<td>
							查询结果
						</td>
						<td align="right">
							<a href="javascript:0"></a>
						</td>
					</tr>
					
					<c:forEach items="${newsesList}"  var="news" varStatus="status">
						<tr>
							<td class="mainPageUl">
								<a href="${pageContext.request.contextPath }/newsServlet?type1=showANews&newsId=${news.newsId}&page=1&pageSize=2"
									title="${news.caption}">
									${news.caption}
								</a>
							</td>
							<td align="right" width="130">
								<myTag:LocalDateTimeTag dateTime="${news.newsTime}" type="YMD"/>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>  
	<form>
		<input type="hidden" id="newsTypeNumber" value="${requestScope.newsTypesNumber}">
	</form>	
	<jsp:include page="/tail.jsp"></jsp:include>
   </body>
  	<script type="text/javascript">
 		a=document.getElementById('newsTypeNumber');
 		var newsTypeNumber=parseInt(a.value);
 		var divs=document.getElementsByName("news1");
 		for(var i=0;i<divs.length;i++){
 			if(i%2==1)
 				divs[i].setAttribute("class", "newsRight");
 		}
 	</script>
   
 </html>
