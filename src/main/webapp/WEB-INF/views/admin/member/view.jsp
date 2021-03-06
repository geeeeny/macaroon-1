<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--JSTL-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<body>
<div class="profile-form">
	<div class="md-offset-4 mt-4 md-4">
		<h1 class="profile"><span style = "color:#272727;">${member.userId} </span><span style = "color:#d09cd9;">'s Profile</span></h1>
		<hr />
		<div class="row">
			<div class="col-md-2">User-id</div>
			<div class="col-md-10">${member.userId}</div>
		</div>
		<div class="row">
			<div class="col-md-2">Password</div>
			<div class="col-md-10">${member.password}</div>
		</div>
		<div class="row">
			<div class="col-md-2">Name</div>
			<div class="col-md-10">${member.name}</div>
		</div>
		<div class="row">
			<div class="col-md-2">Email</div>
			<div class="col-md-10">${member.email}</div>
		</div>
		<div class="row">
			<div class="col-md-2">Phone</div>
			<div class="col-md-10">${member.cellPhone}</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">Address</div>
		<div class="col-md-10">${member.address}</div>
	</div>
	<div class="row">
		<div class="col-md-2">Registration</div>
		<div class="col-md-10">${member.regDate}</div>
	</div>
	<div class="row">
		<div class="col-md-2">Updated At</div>
		<div class="col-md-10">${member.updateDate}</div>
	</div>

	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-10">
			<a href="../changepassword/${member.userId}?page=${param.page}"
				class="btn btn-primary btn-sm">Change Password</a> <a
				href="../edit/${member.userId}?page=${param.page}"
				class="btn btn-primary btn-sm"> Edit Profile</a> <a href="../list"
				class="btn btn-primary btn-sm">Go Back</a>
		</div>
	</div>
</div>
</body>