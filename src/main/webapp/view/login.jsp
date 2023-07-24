<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<form action="http://localhost:8080/quanlysmatphone/loginServlet"
			class="login-form" method="post">
			<h1>Login</h1>
			<label for="username">Username</label> <input type="text"
				id="username" name="username" required> <label
				for="password">Password</label> <input type="password" id="password"
				name="password" required> <input type="submit"
				value="Đăng nhập" class="form-submit">
		</form>
	</div>
	<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	background-color: #f0f0f0;
}

.container {
	width: 400px;
	padding: 30px;
	background-color: #ffffff;
	border-radius: 10px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

.login-form {
	display: flex;
	flex-direction: column;
}

h1 {
	text-align: center;
	margin-bottom: 20px;
}

label {
	font-weight: bold;
}

input {
	padding: 10px;
	margin-bottom: 15px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

button {
	padding: 10px;
	background-color: #007bff;
	color: #ffffff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.2s;
}

button:hover {
	background-color: #0056b3;
}
</style>
</body>
</html>