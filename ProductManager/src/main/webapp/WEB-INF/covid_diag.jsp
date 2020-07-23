<%@ include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CovId Screen Test</title>
</head>
<body>
	<div class="container">
		<div class="page-header">
			<h4>CovId Screen Test</h4>
		</div>
		<c:if test="${ message != null }">   
			<div class="alert alert-success" role="alert">${ message }</div>
		</c:if>   
		<c:if test="${ error != null }">
			<div class="alert alert-danger" role="alert">${ error }</div>
		</c:if>
		
		<form  method="post" action="/saveDiagnosis">
			<label>Check the below symptoms you have</label>
			<div class="row">
				<div class="col-lg-4">
					<div class="panel panel-primary">
						<div class="panel-heading">Common Symptoms</div>
						<div class="panel-body">
							<div class="checkbox">
								<label><input type="checkbox" name="symptoms" value="Fever">Fever</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" name="symptoms" value="Dry Cough">Dry
									Coughs</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" name="symptoms" value="Tiredness">Tiredness</label>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="panel panel-primary">
						<div class="panel-heading">Less Common Symptoms</div>
						<div class="panel-body">
							<div class="checkbox">
								<label><input type="checkbox" name="symptoms" value="Pain Aches">Pain
									and Aches</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" name="symptoms"
									value="Sore Throat">Sore Throat</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" name="symptoms"
									value="Loss of Smell or Taste">Lost Smell or Taste</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" name="symptoms" value="Diarrhoea">Diarrhoea</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" name="symptoms" value="Headaches">Headache</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" name="symptoms"
									value="Conjunctivitis">Conjunctivitis</label>
							</div>
						</div>
					</div>


				</div>
				<div class="col-lg-4">
					<div class="panel panel-primary">
						<div class="panel-heading">Serious Symptoms</div>
						<div class="panel-body">
							<div class="checkbox">
								<label><input type="checkbox" name="symptoms"
									value="Breathing Issue">Difficulty in Breathing</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" name="symptoms"
									value="Loss of Speech or Movement">Loss of Speech or Movement</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" name="symptoms" value="Chest Pain">Chest
									Pain</label>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col col-lg-3">
					<label>Check the pre-existing health condition you have</label>
				</div>
				<div class="col col-lg-3">
					<div class="checkbox">
						<label><input type="checkbox" name="mc" value="Diabetes">Diabetes</label>
					</div>
					<div class="checkbox">
						<label><input type="checkbox" name="mc"
							value="Liver Disease">Liver Disease</label>
					</div>
					<div class="checkbox">
						<label><input type="checkbox" name="mc"
							value="Kidney Disease">Kidney Disease</label>
					</div>
					<div class="checkbox">
						<label><input type="checkbox" name=mc value="Over Weight">Sever
							Over Weight</label>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col col-lg-3">
					<label>Select your age group</label>
				</div>
				<div class="col col-lg-3">
					<select name="ageGrp">
						<option value="-1">-Select-</option>
						<option value="1to20">1 to 20</option>
						<option value="21to40">21 to 40</option>
						<option value="41to60">41 to 60</option>
						<option value="61to80">61 to 80</option>
						<option value="81to100">81 to 100</option>
						<option value="100above">100 and above</option>
					</select>
				</div>
			</div>
			<div class="row">
				<div class="col col-lg-3">
					<label>Select your gender</label>
				</div>
				<div class="col col-lg-3">
					<select name="gender">
						<option value="-1">-Select-</option>
						<option value="M">Male</option>
						<option value="F">Female</option>
					</select>
				</div>
			</div>

			<div class="row">
				<div class="col col-lg-3">
					<label>Email</label>
				</div>
				<div class="col col-lg-3">
					<input type="email" name="pemail" />
				</div>
			</div>

			<div class="row">
				<div class="col col-lg-3">
					<label>Mention the places you have visited since last week.</label>
				</div>
				<div class="col col-lg-3">
					<textarea cols="30" rows="3" name="placeswent"></textarea>
				</div>
			</div>

			<div class="row">
				<div class="col col-lg-3"></div>
				<div class="col-lg-3">
					<button type="submit" class="btn btn-primary">Submit</button>
					<button type="reset" class="btn btn-primary">Reset</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>