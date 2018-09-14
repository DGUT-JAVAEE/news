<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/myTagLib" prefix="myTag"%>
<!doctype html>
<html>
 <head>
 	<meta charset="utf-8"></head>
  <body>
    
	<table width="600" border="0" align="center">
		<tbody>
			<tr><td  height="50"><b>个人信息：</b></td></tr><br/>
			<tr><td  align="right" width="150">用户类型：</td>
				<td>${ sessionScope.user.type}</td>
			</tr>			
			<tr><td  align="right" >用户名：</td>
				<td>${ sessionScope.user.name}</td>
			</tr>			
			<tr><td align="right">头像：</td>	
				<td><img src="${ sessionScope.user.headIconUrl}" height="200"/></td></tr>
			<tr><td align="right">注册日期：</td>
				<td><myTag:TimestampTag dateTime="${ sessionScope.user.registerDate}" type="YMDHMS-"/></td>
			</tr> 
		</tbody>
	</table> 				   
  </body>
</html>
