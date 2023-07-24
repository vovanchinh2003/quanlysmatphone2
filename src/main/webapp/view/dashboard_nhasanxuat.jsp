<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="org.apache.commons.codec.binary.Base64"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />
<link rel="stylesheet" type="text/css"
	href="http://localhost:8080/quanlysmatphone/assets/css/admin.css">
</head>
<body>
	<div class="containesr">
		<div class="navigation">
			<ul>
				<li><a href="#"> <span class="icon"><i
							class='bx bxl-android'></i></span> <span class="title">Brand Name</span>
				</a></li>
				<li><a href=""> <span class="icon"><i
							class='bx bx-home'></i></span> <span class="title">Dashboard</span>
				</a></li>
				<li><a
					href="http://localhost:8080/quanlysmatphone/NhaSanXuatController">
						<span class="icon"><i class='bx bxl-product-hunt'></i></span> <span
						class="title">Nhà sản xuất</span>
				</a></li>
				<li><a href=""> <span class="icon"><i
							class='bx bxl-product-hunt'></i></span> <span class="title">Sản
							phẩm</span>
				</a></li>
				<li><a
					href="http://localhost:8080/quanlysmatphone/khachHangController">
						<span class="icon"><i class='bx bxs-user-account'></i></span> <span
						class="title">Khách hàng</span>
				</a></li>
				<li><a href=""> <span class="icon"><i
							class='bx bx-food-menu'></i></span> <span class="title">Nhân viên</span>
				</a></li>
				<li><a href=""> <span class="icon"><i
							class='bx bx-captions'></i></span> <span class="title">Đơn hàng</span>
				</a></li>
				<li><a
					href="http://localhost:8080/quanlysmatphone/category/h.jsp"> <span
						class="icon"><i class='bx bx-message'></i></span> <span
						class="title">Phản hồi</span>
				</a></li>
			</ul>
		</div>



		<div class="main">
			<div class="topbar">
				<div class="toggle">
					<i class='bx bx-menu'></i>
				</div>
				<div class="search">
					<label> <input type="text" placeholder="Search...">
						<i class='bx bx-search-alt-2'></i>
					</label>
				</div>
				<div class="letters">
					<a href="#"><i class='bx bx-envelope'></i><sup>9</sup></a> <a
						href="#"><i class='bx bx-bell'></i><sup class="total-count"
						data-count='0'></sup></a>
				</div>
				<%
				if (session.getAttribute("username") != null) {
				%>
				<%
				String username = (String) session.getAttribute("username");
				String userRole = (String) session.getAttribute("userRole");
				String TenNhanVien = (String) session.getAttribute("TenNhanVien");
				byte[] anh = (byte[]) session.getAttribute("anh");
				if (anh != null && anh.length > 0) {
				%>
				<div class="user">

					<a class="settings-icon" onclick="settingsMenuToggle()"
						href="javascript:void(0);"> <img style="border-radius: 50px;"
						width="10%"
						src="data:image/jpeg;base64,<%=org.apache.commons.codec.binary.Base64.encodeBase64String(anh)%>"
						alt="">
					</a>
				</div>
				<%
				}
				}
				%>
				<div class="settings-menu">
					<div id="dark-btn">
						<span></span>
					</div>
					<div class="settings-menu-inner">
						<div class="user-profile">
							<%-- Check if the user is logged in and display their profile info --%>
							<%
							if (session.getAttribute("username") != null) {
							%>
							<%
							String username = (String) session.getAttribute("username");
							String userRole = (String) session.getAttribute("userRole");
							String TenNhanVien = (String) session.getAttribute("TenNhanVien");
							byte[] anh = (byte[]) session.getAttribute("anh");
							%>
							<img style="border-radius: 50px;"
								src="data:image/jpeg;base64,<%=org.apache.commons.codec.binary.Base64.encodeBase64String(anh)%>"
								alt="">
							<p style="color: #000;"><%=TenNhanVien%></p>
							<%-- Add other profile information if needed --%>
							<%
							}
							%>
						</div>
						<hr>
						<div class="settings-links">
							<a
								href="http://localhost/DOANPHPMYSQL_2023/admin/view/category/dashboard_thongtintaikhoan.php">Xem
								thông tin tài khoản<i class='bx bxs-chevron-right'></i>
							</a>
						</div>
						<hr>
						<div class="settings-links">
							<form
								action="http://localhost:8080/quanlysmatphone/logoutServlet"
								method="post">
								<input type="submit" value="Đăng xuất">
							</form>
						</div>
					</div>
				</div>

			</div>
			<%@ include file="/list/list_nhasanxuat.jsp"%>
		</div>
	</div>
	<script src="http://localhost:8080/quanlysmatphone/assets/js/admin.js"></script>
	<script>
    /// toggle///
    let toggle = document.querySelector('.toggle');
    let navigation = document.querySelector('.navigation');
    let main = document.querySelector('.main');

    toggle.onclick = function () {
        navigation.classList.toggle('active')
        main.classList.toggle('active')
    }
    /////
    let list = document.querySelectorAll('.navigation li');

    function activeLink() {
        list.forEach((item) =>
            item.classList.remove('hovered'));
        this.classList.add('hovered');
    }
    list.forEach((item) =>
        item.addEventListener('mouseover', activeLink));
</script>

</body>
</html>