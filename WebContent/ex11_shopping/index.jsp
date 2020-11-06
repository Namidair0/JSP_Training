<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<link rel="stylesheet" href="../RESOURCES/boot_strap/css/bootstrap.css">
</head>
<body>

	<%@ include file="menu.jsp" %>

	<%!
		String greeting = "웹 쇼핑몰에 오신 것을 환영합니다.";
		String tagline = "Welcome to Web Market";
	%>
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3"><%=greeting %></h1>
		</div>
	</div>
	
	<div class="container">
		<div class="text-center">
			<p><a href="products.jsp">상품 목록</a></p>
			<p><a href="addProduct.jsp">상품 추가</a></p>
			<h3><%=tagline %></h3>
			<%
				response.setIntHeader("Refresh", 5);  //5초마다 시각이 갱신됨
				Date day = new Date();
				String am_pm;
				int hour = day.getHours();
				int minute = day.getMinutes();
				int second = day.getSeconds();
				if(hour / 12 == 0){ // 현재 시각이 12 이하면 'AM' 출력
					am_pm = "AM";
				} else {
					am_pm = "PM";
				hour = hour - 12;	// 13~23시는 1시~11시로 표시
				}
				String ct = am_pm + " " + hour + ":" + minute + ":" + second;
				out.print(ct);
			%>
		</div>
	</div>
	
	
	<%@ include file="footer.jsp" %>
	
</body>
</html>