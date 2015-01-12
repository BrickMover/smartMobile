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
	<title>mail</title>
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
		<DIV data-role="header" data-theme="b">
		  <div data-role="navbar">
		    <ul>
		      <li><a href="home" data-ajax="false" data-icon="home">首页</a></li>
		      <li><a href="#" data-ajax="false" data-icon="mail">邮件</a></li>
		      <li><a href="contacts" data-ajax="false" data-icon="user">通讯录</a></li>
		      <li><a href="calendar" data-ajax="false" data-icon="calendar">日历</a></li>
		    </ul>
		  </div>
		</DIV>
		
		<DIV data-role="content">
			<H1>Mail</H1>
		</DIV>
		
		<DIV data-role="footer" data-position="fixed" data-theme="b">
		<H1>@wyt</H1>
		</DIV>
	</DIV>
</body>
</html>