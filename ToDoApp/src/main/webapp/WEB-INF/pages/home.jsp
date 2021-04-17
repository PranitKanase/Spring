<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page isELIgnored="false"%>

<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">

<title><c:out value="${page}"></c:out></title>
</head>
<body>


	<div class="container mt-3">
		<h1 class="text-center">Welcome to TODO Manager</h1>


		<c:if test="${not empty msg }">
			<div class="alert alert-success">
				<b><c:out value="${msg}"></c:out></b>
			</div>
		</c:if>

		<div class="row mt-4">
			<div class="col-md-2">
				<div class="list-group">
					<button type="button"
						class="list-group-item list-group-item-action active"
						aria-current="true">Menu</button>
					<a href='<c:url value='/add'></c:url>'
						class="list-group-item list-group-item-action">Add TODO</a> <a
						href='<c:url value='/home'></c:url>'
						class="list-group-item list-group-item-action">View TODOs</a>
				</div>
			</div>
			<div class="col-md-10">

				<c:if test="${page=='home'}">
					<h1 class="text-center">All TODOs</h1>
					
					<c:forEach items="${todos }" var="t"></c:forEach>
					
					<div class="card">
						<div class="card-body">
							<h3><c:out value="${t.todoTitle }"></c:out></h3>
							<p><c:out value="${t.todoContent }"></c:out></p>
						</div>
					</div>
					
				</c:if>

				<c:if test="${page=='add'}">
					<h1 class="text-center">Add TODO</h1>

					<form:form action="saveTodo" method="post" modelAttribute="todo">

						<div class="form-group mt-3">
							<form:input path="todoTitle" cssClass="form-control"
								placeholder="Enter your ToDo title" />
						</div>

						<div class="form-group mt-3">
							<form:textarea path="todoContent" cssClass="form-control"
								placeholder="Enter your ToDo content" cssStyle="height:300px" />
						</div>

						<div class="container text-center mt-3">
							<button class="btn btn-outline-success">Add ToDo</button>
						</div>

					</form:form>

				</c:if>

			</div>
		</div>


	</div>

	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
    -->
</body>
</html>