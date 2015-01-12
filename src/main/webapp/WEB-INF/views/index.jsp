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
	<DIV data-role="page" id="mypage">
		<DIV data-role="header">
			<div data-role="tabs" id="tabs">
			  <div data-role="navbar">
			    <ul>
			      <li><a href="#one" data-ajax="false">one</a></li>
			      <li><a href="#two" data-ajax="false">two</a></li>
			      <li><a href="myCalender" data-ajax="false">three</a></li>
			    </ul>
			  </div>
			  <div id="one" class="ui-body-d ui-content">
			    <h1>First tab contents</h1>
			  </div>
			  <div id="two">
			    <ul data-role="listview" data-inset="true">
			        <li><a href="#">Acura</a></li>
			        <li><a href="#">Audi</a></li>
			        <li><a href="#">BMW</a></li>
			        <li><a href="#">Cadillac</a></li>
			        <li><a href="#">Ferrari</a></li>
			    </ul>
			  </div>
  			</div>
		</DIV>
		<DIV data-role="footer" data-position="fixed" data-theme="b">
		<H1>@wyt</H1>
		</DIV>
	</DIV>
</body>
</html>
