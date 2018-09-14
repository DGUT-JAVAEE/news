<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
 	<head>
 	 <meta charset="utf-8">
  	 <link href="${pageContext.request.contextPath }/css/1.css" rel="stylesheet" type="text/css">
  	 <script type="text/javascript"> 
  	 	function search(){
  	 		document.getElementById('searchForm').submit();
  	 	}	
  	 </script>
  	</head>
  <body>
	  <form id="searchForm" action="${pageContext.request.contextPath }/newsServlet?type1=search&page=1&pageSize=5" method="post">
		 <div class="div-out">
		 	<div class="logleft">
		 		<img src="${pageContext.request.contextPath }/images/log.png">
		 	</div>
		 	<div class="logMiddle">
				<div class="logMiddleInner">			
					<input type="text" id="search" name="search">
					<a href="javascript:search()" >
						<img  src="${pageContext.request.contextPath }/images/search_b.jpg" />
					</a>	
				</div> 	
		 	</div>
			<div class="logRight">
				<div class="logRightInner">	
					<c:if test="${!(empty sessionScope.user) }">
						<a href="${pageContext.request.contextPath }/user/manageUIMain/manageMain.jsp">管理</a>&nbsp;
					</c:if>
				
					<a href="${pageContext.request.contextPath }/index.jsp">首页</a>&nbsp;
					<c:choose>
						<c:when test="${empty sessionScope.user}">
							<a href="${pageContext.request.contextPath }/user/free/login.jsp">登录</a>
							&nbsp;<a href="${pageContext.request.contextPath }/user/free/register.jsp">注册</a>
					    </c:when>
					    <c:otherwise>
					    	${sessionScope.user.name}&nbsp;
					    	<a href="${pageContext.request.contextPath }/userServlet?type1=exit">注销</a>
					    </c:otherwise>
					</c:choose>		
				</div> 	
		 	</div>
		</div>
		<div class="clear"></div>
	</form>	   
  </body> 
</html>
