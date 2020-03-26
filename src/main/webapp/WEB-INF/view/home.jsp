<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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

.btn-custom {
	background-color: #f8f9fa !important
}
</style>
<body>
	<header>
		<div class="navbar navbar-dark bg-dark shadow-sm">
			<div class="container d-flex justify-content-between">
				<a href="#" class="navbar-brand d-flex align-items-center"> <svg
						class="bi bi-building" width="1em" height="1em"
						viewBox="0 0 20 20" fill="currentColor"
						xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd"
							d="M17.285 2.089a.5.5 0 01.215.411v15a.5.5 0 01-.5.5h-3a.5.5 0 01-.5-.5V16h-1v1.5a.5.5 0 01-.5.5H3a.5.5 0 01-.5-.5v-6a.5.5 0 01.418-.493l5.582-.93V5.5a.5.5 0 01.324-.468l8-3a.5.5 0 01.46.057zM9.5 5.846V10.5a.5.5 0 01-.418.493l-5.582.93V17h8v-1.5a.5.5 0 01.5-.5h2a.5.5 0 01.5.5V17h2V3.221l-7 2.625z"
							clip-rule="evenodd"></path>
  <path fill-rule="evenodd" d="M8.5 17.5v-7h1v7h-1z" clip-rule="evenodd"></path>
  <path
							d="M4.5 13h1v1h-1v-1zm2 0h1v1h-1v-1zm-2 2h1v1h-1v-1zm2 0h1v1h-1v-1zm6-10h1v1h-1V5zm2 0h1v1h-1V5zm-4 2h1v1h-1V7zm2 0h1v1h-1V7zm2 0h1v1h-1V7zm-2 2h1v1h-1V9zm2 0h1v1h-1V9zm-4 0h1v1h-1V9zm0 2h1v1h-1v-1zm2 0h1v1h-1v-1zm2 0h1v1h-1v-1zm-4 2h1v1h-1v-1zm2 0h1v1h-1v-1zm2 0h1v1h-1v-1z"></path>
</svg> <strong>&nbsp;&nbsp;&nbsp;Customer Relationship</strong>
				</a>
			</div>
			<div>
				<form:form action="logout">
					<input type="submit" value="Logout" class="btn btn-custom" />
				</form:form>
			</div>
		</div>
	</header>


	<div class=" paddingContainer container text-center">
		<h1>Manage Customers</h1>
		<p>Select from below operations to manage</p>
		<p>
			<a class="btn btn-dark" href="customerForm" role="button">Add</a> <a
				class="btn btn-dark" href="showAllCustomers" role="button">List</a>
		</p>
	</div>


</body>
</html>
