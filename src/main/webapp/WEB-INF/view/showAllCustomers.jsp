<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Customer Relationship</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>


</head>
<style>
body {
	background: #f8f9fa !important;
}

.paddingContainer {
	padding-top: 3rem !important;
}
</style>
<body>

	<header>
	<div class="navbar navbar-dark bg-dark shadow-sm">
		<div class="container d-flex justify-content-between">
			<a href="#" class="navbar-brand d-flex align-items-center"> <svg
					class="bi bi-building" width="1em" height="1em" viewBox="0 0 20 20"
					fill="currentColor" xmlns="http://www.w3.org/2000/svg"> <path
					fill-rule="evenodd"
					d="M17.285 2.089a.5.5 0 01.215.411v15a.5.5 0 01-.5.5h-3a.5.5 0 01-.5-.5V16h-1v1.5a.5.5 0 01-.5.5H3a.5.5 0 01-.5-.5v-6a.5.5 0 01.418-.493l5.582-.93V5.5a.5.5 0 01.324-.468l8-3a.5.5 0 01.46.057zM9.5 5.846V10.5a.5.5 0 01-.418.493l-5.582.93V17h8v-1.5a.5.5 0 01.5-.5h2a.5.5 0 01.5.5V17h2V3.221l-7 2.625z"
					clip-rule="evenodd"></path> <path fill-rule="evenodd"
					d="M8.5 17.5v-7h1v7h-1z" clip-rule="evenodd"></path> <path
					d="M4.5 13h1v1h-1v-1zm2 0h1v1h-1v-1zm-2 2h1v1h-1v-1zm2 0h1v1h-1v-1zm6-10h1v1h-1V5zm2 0h1v1h-1V5zm-4 2h1v1h-1V7zm2 0h1v1h-1V7zm2 0h1v1h-1V7zm-2 2h1v1h-1V9zm2 0h1v1h-1V9zm-4 0h1v1h-1V9zm0 2h1v1h-1v-1zm2 0h1v1h-1v-1zm2 0h1v1h-1v-1zm-4 2h1v1h-1v-1zm2 0h1v1h-1v-1zm2 0h1v1h-1v-1z"></path>
				</svg> <strong>&nbsp;&nbsp;&nbsp;Customer Management</strong>
			</a>
		</div>
	</div>
	</header>

	<div class="paddingContainer container">
		<div class="col-md-12 order-md-1">
			<h4>Customers</h4>
			<div class="table-responsive">
				<table class="table table-striped table-sm">
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email Id</th>
						<th>Gender</th>
						<th>State</th>
						<th colspan="2">Action</th>
					</tr>
					<c:forEach var="customer" items="${customers}">
						<c:url var="updateUrl" value="/updateCustomer">
							<c:param name="id" value="${customer.id}"></c:param>
						</c:url>
						<c:url var="deleteUrl" value="/deleteCustomer">
							<c:param name="id" value="${customer.id}"></c:param>
						</c:url>
						<tr>
							<td>${customer.firstName}</td>
							<td>${customer.lastName}</td>
							<td>${customer.emailId}</td>
							<td>${customer.gender}</td>
							<td>${customer.state}</td>
							<td><a href="${updateUrl}" class="btn btn-secondary"/>Update</td>
							<td><a href="${deleteUrl}" class="btn btn-danger"/>Delete</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
		<a class="btn btn-dark" href="${pageContext.request.contextPath}/" role="button">Back</a>
	</div>
	
</body>
</html>