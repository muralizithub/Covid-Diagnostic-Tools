<%@ include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient Details</title>
</head>
<body>
	<div class="container">
		<div class="page-header">
			<h4>Add Patient</h4>
		</div>

		<c:if test="${ message != null }">
			<div class="alert alert-success" role="alert">${ message }</div>
		</c:if>
		<c:if test="${ error != null }">
			<div class="alert alert-danger" role="alert">${ error }</div>
		</c:if>

		
			<ul class="nav nav-tabs">
				<li class="active"><a data-toggle="tab" href="#pinfo">Personal
						Information</a></li>
				<li><a data-toggle="tab" href="#cinfo">Contact Information</a>
				</li>
				<li><a data-toggle="tab" href="#winfo">Ward Information</a></li>
			</ul>

			<div class="tab-content">
				<div id="pinfo" class="tab-pane fade in active">
					<form action="/addPatient" method="post">
					<div class="divider"></div>
					<div class="row form-group">
						<div class="col col-lg-3 col-md-3 col-sm-12">
							<label>First Name:</label>
						</div>
						<div class="col col-lg-3 col-md-3 col-sm-12">
							<input type="text" name="firstName" class="form-control">
						</div>
					</div>

					<div class="row form-group">
						<div class="col col-lg-3 col-md-3 col-sm-12">
							<label>Last Name:</label>
						</div>
						<div class="col col-lg-3 col-md-3 col-sm-12">
							<input type="text" name="lastName" class="form-control">
						</div>
					</div>

					<div class="row form-group">
						<div class="col col-lg-3 col-md-3 col-sm-12">
							<label>Gender:</label>
						</div>
						<div class="col col-lg-3 col-md-3 col-sm-12">
							<div class="radio-inline">
								<label><input type="radio" name="gender" value="M">Male</label>
							</div>
							<div class="radio-inline">
								<label><input type="radio" name="gender" value="F">Female</label>
							</div>
						</div>
					</div>

					<div class="row form-group">
						<div class="col col-lg-3 col-md-3 col-sm-12">
							<label>Martial Status:</label>
						</div>
						<div class="col col-lg-3 col-md-3 col-sm-12">
							<div class="radio-inline">
								<label><input type="radio" name="martialStatus"
									value="M">Married</label>
							</div>
							<div class="radio-inline">
								<label><input type="radio" name="martialStatus"
									value="S">Single</label>
							</div>
						</div>
					</div>

					<div class="row form-group">
						<div class="col col-lg-3 col-md-3 col-sm-12">
							<label>Age:</label>
						</div>
						<div class="col col-lg-3 col-md-3 col-sm-12">
							<select class="form-control" name="age">
								<option value="-1">-Select-</option>
								<c:forEach var="i" begin="1" end="100">
									<option value="<c:out value='${i}'/>"><c:out
											value="${i}" /></option>
								</c:forEach>
							</select>
						</div>
					</div>

					<div class="row form-group">
						<div class="col col-lg-3 col-md-3 col-sm-12"></div>
						<div class="col col-lg-3 col-md-3 col-sm-12">
							<input type="submit" class="btn btn-primary"> <input
								type="reset" class="btn btn-primarya">
						</div>
					</div>
					</form>
				</div>
				<div id="cinfo" class="tab-pane fade">
					<form action="/addPatient" method="post">
					<div class="divider"></div>
					<div class="row form-group">
						<div class="col col-lg-3 col-md-3 col-sm-12">
							<label>Email:</label>
						</div>
						<div class="col col-lg-3 col-md-3 col-sm-12">
							<input type="text" name="email" class="form-control">
						</div>
					</div>

					<div class="row form-group">
						<div class="col col-lg-3 col-md-3 col-sm-12">
							<label>Mobile No:</label>
						</div>
						<div class="col col-lg-3 col-md-3 col-sm-12">
							<input type="text" name="mobile" class="form-control">
						</div>
					</div>

					<div class="row form-group">
						<div class="col col-lg-3 col-md-3 col-sm-12">
							<label>Emergency No:</label>
						</div>
						<div class="col col-lg-3 col-md-3 col-sm-12">
							<input type="text" name="emergencyNo" class="form-control">
						</div>
					</div>

					<div class="row form-group">
						<div class="col col-lg-3 col-md-3 col-sm-12">
							<label>Door No:</label>
						</div>
						<div class="col col-lg-3 col-md-3 col-sm-12">
							<input type="text" name="doorNo" class="form-control">
						</div>
					</div>

					<div class="row form-group">
						<div class="col col-lg-3 col-md-3 col-sm-12">
							<label>Street:</label>
						</div>
						<div class="col col-lg-3 col-md-3 col-sm-12">
							<input type="text" name="street" class="form-control">
						</div>
					</div>

					<div class="row form-group">
						<div class="col col-lg-3 col-md-3 col-sm-12">
							<label>City:</label>
						</div>
						<div class="col col-lg-3 col-md-3 col-sm-12">
							<input type="text" name="city" class="form-control">
						</div>
					</div>

					<div class="row form-group">
						<div class="col col-lg-3 col-md-3 col-sm-12">
							<label>State:</label>
						</div>
						<div class="col col-lg-3 col-md-3 col-sm-12">
							<input type="text" name="state" class="form-control">
						</div>
					</div>

					<div class="row form-group">
						<div class="col col-lg-3 col-md-3 col-sm-12">
							<label>Pincode:</label>
						</div>
						<div class="col col-lg-3 col-md-3 col-sm-12">
							<input type="text" name="pincode" class="form-control">
						</div>
					</div>

					<div class="row form-group">
						<div class="col col-lg-3 col-md-3 col-sm-12">
							<label>Country:</label>
						</div>
						<div class="col col-lg-3 col-md-3 col-sm-12">
							<input type="text" name="country" class="form-control">
						</div>
					</div>
					
					<div class="row form-group">
						<div class="col col-lg-3 col-md-3 col-sm-12"></div>
						<div class="col col-lg-3 col-md-3 col-sm-12">
							<input type="submit" class="btn btn-primary"> <input
								type="reset" class="btn btn-primary">
						</div>
					</div>
					</form>
				</div>
				<div id="winfo" class="tab-pane fade">
					<form action="/addPatient" method="post">
					<div class="divider"></div>
					<div class="row form-group">
						<div class="col col-lg-3 col-md-3 col-sm-12">
							<label>Ward:</label>
						</div>
						<div class="col col-lg-3 col-md-3 col-sm-12">
							<input type="text" name="ward" class="form-control">
						</div>
					</div>

					<div class="row form-group">
						<div class="col col-lg-3 col-md-3 col-sm-12">
							<label>Room No:</label>
						</div>
						<div class="col col-lg-3 col-md-3 col-sm-12">
							<input type="text" name="roomNo" class="form-control">
						</div>
					</div>

					<div class="row form-group">
						<div class="col col-lg-3 col-md-3 col-sm-12">
							<label>Admitted On:</label>
						</div>
						<div class="col col-lg-3 col-md-3 col-sm-12">
							<input type="text" name="admisionDate" class="form-control">
						</div>
					</div>

					<div class="row form-group">
						<div class="col col-lg-3 col-md-3 col-sm-12">
							<label>Discharged On:</label>
						</div>
						<div class="col col-lg-3 col-md-3 col-sm-12">
							<input type="text" name="dischargeDate" class="form-control">
						</div>
					</div>
					
					<div class="row form-group">
						<div class="col col-lg-3 col-md-3 col-sm-12"></div>
						<div class="col col-lg-3 col-md-3 col-sm-12">
							<input type="submit" class="btn btn-primary"> <input
								type="reset" class="btn btn-primary">
						</div>
					</div>
					</form>
				</div>
			</div>
	</div>
</body>
</html>