<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>    
<!DOCTYPE html>
<html>
<head>
<!-- 

	@FileName : layout.jsp
	@Project : NANUM
	@Date : 2016. 6. 13.
	@Author : cutaehou


-->
<meta charset="UTF-8">
		<title>index</title>
</head>
<body>
	<!-- Header  영역  -->
	<%-- <tiles:insertAttribute name="header" /> --%>
	<!-- Main 영역 -->
	<tiles:insertAttribute name="content" />
	<!-- Footer  영역  -->
	<tiles:insertAttribute name="footer" />	
</body>
</html>