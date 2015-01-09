<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>List view - jQuery Mobile Demos</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/themes/default/jquery.mobile-1.4.2.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/date/jquery.mobile.datepicker.css" />
	<script src="${pageContext.request.contextPath }/static/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath }/static/js/jquery.mobile-1.4.2.min.js"></script>
	<script src="${pageContext.request.contextPath }/static/js/ui/jquery.ui.datepicker.js"></script>
    <script id="mobile-datepicker" src="${pageContext.request.contextPath }/static/js/jquery.mobile.datepicker.js"></script>
	<style id="custom-icon">
        .ui-icon-custom:after {
			background-image: url("../_assets/img/glyphish-icons/21-skull.png");
			background-position: 3px 3px;
			background-size: 70%;
		}
    </style>
</head>
<body>
	<div data-role="collapsible" data-theme="c" data-content-theme="b">
	<h2>Choose a car model...</h2>
	    <ul data-role="listview" data-filter="true">
	        <li><a href="index.html">Acura</a></li>
	        <li><a href="index.html">Audi</a></li>
	        <li><a href="index.html">BMW</a></li>
	        <li><a href="index.html">Cadillac</a></li>
	        <li><a href="index.html">Chrysler</a></li>
	        <li><a href="index.html">Dodge</a></li>
	        <li><a href="index.html">Ferrari</a></li>
	        <li><a href="index.html">Ford</a></li>
	        <li><a href="index.html">GMC</a></li>
	        <li><a href="index.html">Honda</a></li>
	    </ul>
	</div>
	<DIV data-content-theme="b">
		<input type="text" data-role="date" data-inline="true">
	</DIV>
	
</body>
</html>
