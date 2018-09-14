<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!doctype html>
<html>
 <head>
 	<meta charset="utf-8"></head>  
  <body>
  管理员<br>
  <a href="${pageContext.request.contextPath }/user/register.jsp" target='_blank'>注册</a><br><br>
  <a href="${pageContext.request.contextPath }/user/login.jsp" target='_blank'>登录</a><br><br>
  <a href="${pageContext.request.contextPath }/userServlet?type1=showPage&page=1&pageSize=2" target='_blank'>浏览用户</a><br><br>
  <a href="${pageContext.request.contextPath }/userServlet?type1=check&page=1&pageSize=2" target='_blank'>审查用户</a><br><br>
  <a href="${pageContext.request.contextPath }/manager/userSearch.jsp" target='_blank'>查询用户</a><br><br>    
  <a href="${pageContext.request.contextPath }/userServlet?type1=delete&page=1&pageSize=2" target='_blank'>删除用户</a><br><br>
用户<br>
  <a href="${pageContext.request.contextPath }/userServlet?type1=exit" target='_blank'>注销</a><br><br>
  <a href="${pageContext.request.contextPath }/user/manage/changePassword.jsp" target='_blank'>修改密码</a><br><br>
  <a href="${pageContext.request.contextPath }/userServlet?type1=showPrivate" target='_blank'>显示个人信息</a><br><br>  
  <a href="${pageContext.request.contextPath }/userServlet?type1=changePrivate1" target='_blank'>修改个人信息</a><br><br>
新闻<br> 
  <a href="${pageContext.request.contextPath }/news/manage/addNews.jsp" target='_blank'>添加新闻</a><br><br>
  <a href="${pageContext.request.contextPath }/newsServlet?type1=manageNews&page=1&pageSize=2" target='_blank'>管理新闻</a><br><br>
  <a href="${pageContext.request.contextPath }/newsServlet?type1=showNews&page=1&pageSize=10" target='_blank'>显示新闻</a><br><br>  
评论<br>   
  </body>
</html>
