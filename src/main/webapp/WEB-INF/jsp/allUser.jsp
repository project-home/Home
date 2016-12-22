<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">    
    <title>标题</title>        
  <meta http-equiv="pragma" content="no-cache">
  <meta http-equiv="cache-control" content="no-cache">
  <meta http-equiv="expires" content="0">    
  <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
  <meta http-equiv="description" content="This is my page">
 </head>
 <body>
		<table border="1">
			<tbody>
			<tr>
				<th>姓名</th>
				<th>年龄</th>
				<th>性别</th>
			</tr>
			<c:if test="${!empty user}">
				<c:forEach items="${user}" var="list">
					<tr>
						<td>${list.name}</td>
						<td>${list.age}</td>
						<td>${list.sex}</td>
					</tr>				
				</c:forEach>
			</c:if>
			</tbody>
			
		</table>
 </body>
</html>