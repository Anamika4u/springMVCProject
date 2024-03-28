<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<body>


	<div class="container mt-3">

		<div class="row">

			<div class="col-md-6 offset-md-3">

				<h1 class="text-center mb-3">Change Contact Details</h1>

				<form action="${pageContext.request.contextPath }/handle-contact"
					method="post">
                    <input type="hidden" value="${contact.id}" name="id" />
					<div class="form-group">
						<label for="name">Contact Name</label> <input type="text"
							class="form-control" id="name" aria-describedby="emailHelp"
							name="name" placeholder="Enter the contact name here"
							value="${contact.name }">
					</div>
					
					<div class="form-group">

						<label for="email">Contact Email</label><input type="text"
							class="form-control" id="email" aria-describedby="emailHelp"
							name="email" placeholder="Enter the contact email here" value="${contact.email }">
					</div>


					<div class="form-group">

						<label for="phoneNumber">Contact PhoneNumber</label><input type="text"
							class="form-control" id="phoneNumber" aria-describedby="emailHelp"
							name="phoneNumber" placeholder="Enter the contact phoneNumber here" value="${contact.phoneNumber }">
					</div>



					<div class="form-group">
						<label for="category">Contact Category</label> <input type="text"
							placeholder="Enter Contact Category" name="category"
							class="form-control" id="category" value="${contact.category }">
					</div>

					<div class="container text-center">

						<a href="${pageContext.request.contextPath }/"
							class="btn btn-outline-danger">Back</a>


						<button type="submit" class="btn btn-warning">Update</button>
					</div>
				</form>


			</div>

		</div>
	</div>




</body>
</html>