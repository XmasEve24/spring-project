<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 페이지</title>
<link rel="stylesheet" href="assets/css/main.css" />
</head>
<body>
	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">
				<!-- Header -->
				<header id="header">
					<a href="index.html" class="logo"><strong>Editorial</strong> by
						HTML5 UP</a>
					<ul class="icons">
						<li><a href="#" class="icon brands fa-twitter"><span
								class="label">Twitter</span></a></li>
						<li><a href="#" class="icon brands fa-facebook-f"><span
								class="label">Facebook</span></a></li>
						<li><a href="#" class="icon brands fa-snapchat-ghost"><span
								class="label">Snapchat</span></a></li>
						<li><a href="#" class="icon brands fa-instagram"><span
								class="label">Instagram</span></a></li>
						<li><a href="#" class="icon brands fa-medium-m"><span
								class="label">Medium</span></a></li>
					</ul>
				</header>
				<section id="banner">
					<div class="content">
						<header class="main">
							<h1><spring:message code="message.header.page" /></h1>
						</header>
						<a href="main.do"><spring:message code="message.header.main" /></a>
						<hr>
						
						<form action="updateBoard.do" method="post">
							<input type="hidden" name="bid" value="${data.bid}">
							<table border="1">
								<tr>
									<td><spring:message code="message.body.table.title" /></td>
									<td><input type="text" name="title" value="${data.title}"></td>
								</tr>
								<tr>
									<td><spring:message code="message.body.table.writer" /></td>
									<td>${data.writer}</td>
								</tr>
								<tr>
									<td><spring:message code="message.body.table.content" /></td>
									<td><input type="text" name="content"
										value="${data.content}"></td>
								</tr>
								<tr>
									<td><spring:message code="message.body.table.reg" /></td>
									<td>${data.bdate}</td>
								</tr>
								<tr>
									<td><spring:message code="message.body.table.cnt" /></td>
									<td>${data.cnt}</td>
								</tr>
								<tr>
									<td colspan="2">
									<a href="deleteBoard.do?bid=${data.bid}" class="button"><spring:message
								code="message.footer.delete" /></a>
									<input style="float: right;" type="submit"
										value="<spring:message code="message.body.table.button"/>"></td>
								</tr>
							</table>
						</form>
					</div>
					<span class="image object"> <img src="${data.filepath}"
						alt="그림" />
					</span>
				</section>
			</div>
		</div>

		<!-- Sidebar -->
		<div id="sidebar">
			<div class="inner">

				<!-- Search -->
				<section id="search" class="alt">
					<form method="post" action="#">
						<input type="text" name="query" id="query" placeholder="Search" />
					</form>
				</section>

				<!-- Menu -->
				<nav id="menu">
					<header class="major">
						<h2>Menu</h2>
					</header>
					<ul>
						<li><a href="index.html">Homepage</a></li>
						<li><span class="opener">Submenu</span>
							<ul>
								<li><a href="#">Lorem Dolor</a></li>
								<li><a href="#">Ipsum Adipiscing</a></li>
								<li><a href="#">Tempus Magna</a></li>
								<li><a href="#">Feugiat Veroeros</a></li>
							</ul></li>
					</ul>
				</nav>
				<!-- Section -->
				<section>
					<header class="major">
						<h2>Get in touch</h2>
					</header>
					<ul class="contact">
						<li class="icon solid fa-envelope"><a href="#">information@untitled.tld</a></li>
						<li class="icon solid fa-phone">(000) 000-0000</li>
						<li class="icon solid fa-home">1234 Somewhere Road #8254<br />
							Nashville, TN 00000-0000
						</li>
					</ul>
				</section>
				<!-- Footer -->
				<footer id="footer">
					<p class="copyright">
						&copy; Untitled. All rights reserved. Demo Images: <a
							href="https://unsplash.com">Unsplash</a>. Design: <a
							href="https://html5up.net">HTML5 UP</a>.
					</p>
				</footer>
			</div>
		</div>
	</div>
	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>