<html>
<head>
<%@include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>          
</head>
<body>
	<div class="container mt-3">

		<div class="row">

			<div class="col-md-12">

				<h1 class="text-center mb-3">Welcome to Contact Manager</h1>

				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Contact Name</th>
							<th scope="col">Email</th>
							<th scope="col">Phone_Number</th>
							<th scope="col">Category</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach items="${contacts }" var="p">
							<tr>
								<th scope="row">${p.id }</th>
								<td>${p.name }</td>
								<td>${p.email }</td>
								<td>${p.phoneNumber }</td>
								<td >${p.category }</td>
								<td>
                                <a href="delete/${p.id }"><i class="fas fa-trash text-danger" style="font-size: 15px;"></i></a>
								<a href="update/${p.id }"><i class="fas fa-pen-nib text-primary" style="font-size: 15px;"></i></a>
							
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

				<div class="container text-center">

					<a href="add-contact" class="btn btn-outline-success">Add
						Contact</a>

				</div>


			</div>


		</div>

	</div>
</body>
</html>
