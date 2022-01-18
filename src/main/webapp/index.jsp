<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix ="fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-6">
			Primeira Pagina JPS
			<%! boolean formatar = true; %>
			<%!
			String today(){
			java.text.SimpleDateFormat dt = new java.text.SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
			return dt.format(new java.util.Date());
			} 
			%>
			
			
				<c:set var="variavel" value="Primeira pagina JSP utilizando JST"/>
				<c:out value="${variavel}"/>
				<c:set var="formatar" value="true"/>
				<c:set var="d1" value="<%=new java.util.Date()%>"/>
				<h1>A data de hoje é: <c:out value="${d1}"/> </h1>
				<h1>A data de hoje é: <fmt:formatDate pattern = "yy-MM-dd hh:mm:ss" value="${d1}"/> </h1>
				<c:if test="$()formatar == true">
				<p>Variavel formatar = <c:out value="${formatar}"/><p>
				</c:if>
				<h1> A data de hoje é: <c:choose>
				<c:when test ="${formatar == true}">
				</c:when>
				<c:otherwise>
				<c:out value="${d1}"/>
				</c:otherwise>
				</c:choose> </h1>
			
			</div>
			<div class="col-6">
			
			
			</div>
		</div>
	</div>
</body>
</html>