<%@ include file="header.jsp" %>
<!DOCTYPE HTML>
<html>

<head>
<title>Treatment Management System</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="/css/bootstrap.min.css">
<script
	src="/js/jquery.min.js"></script>
<script
	src="/js/bootstrap.min.js"></script>

<style>
body {
	background-image: url("index1.jpg");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
}
</style>
</head>
<body>
	<div class="container">
		<form method="post" action="/saveTreatment">
			<div class="row col-md-6 col-md-offset-3">
				<div class="panel panel-primary">
					<div class="panel-heading text-center">
						<h1>Treatment Management</h1>
					</div>
					<div class="panel-body">
						<div class="form-group">
							<label for="name">Name:</label> <input type="text" name="pname"
								class="form-control">
						</div>

						<div class="form-group">
							<label for="age">Age:</label> <input type="number" name="age"
								class="form-control">
						</div>
						<div class="form-group">
							<label for="temperature">Body Temperature:</label> <input
								type="number" name="temp" class="form-control">
						</div>
						<div class="form-group">
							<label for="clinicalFeature">Clinical Features:</label>
							<div class="checkbox">
								<label><input type="checkbox" name="clinicalFeature"
									value="Fever">Fever</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" name="clinicalFeature"
									value="Cough">Cough</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" name="clinicalFeature"
									value="Fatigue">Fatigue</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" name="clinicalFeature"
									value="Shortness of breath">Shortness of breath</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" name="clinicalFeature"
									value="Soar throat">Soar throat</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" name="clinicalFeature"
									value="Diarrhea">Diarrhea</label>
							</div>
						</div>
						<div class="form-group">
							<label for="clinicalSeverity">Clinical Severity:</label>
							<div class="radio">
								<label><input type="radio" name="clinicalSeverity"
									value="Mild" checked>Mild</label>
							</div>
							<div class="radio">
								<label><input type="radio" name="clinicalSeverity"
									value="Moderate">Moderate</label>
							</div>
							<div class="radio">
								<label><input type="radio" name="clinicalSeverity"
									value="Severe">Severe</label>
							</div>
						</div>
						<div class="form-group">
							<label for="orotharyngealSwab">Orotharyngeal Swab:</label>
							<div class="radio">
								<label><input type="radio" name="orotharyngealSwab"
									value="Positive">Positive</label>
							</div>
							<div class="radio">
								<label><input type="radio" name="orotharyngealSwab"
									value="Negative">Negative</label>
							</div>
						</div>
						<div class="form-group">
							<label for="nasropharyngealSwab">Nasropharyngeal Swab:</label>
							<div class="radio">
								<label><input type="radio" id="Positive"
									name="nasropharyngealSwab" value="Positive">Positive</label>
							</div>
							<div class="radio">
								<label><input type="radio" id="Negative"
									name="nasropharyngealSwab" value="Negative">Negative</label>
							</div>
						</div>
						<div class="form-group">
							<label for="medicine">Medicines:</label>
							<div class="checkbox">
								<label><input type="checkbox" name="medicine"
									value="Ribavirin">Ribavirin</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" name="medicine"
									value="Oseltamivir">Oseltamivir</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" name="medicine"
									value="Glococorticoids">Glococorticoids</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" name="medicine"
									value="Intravenous immune globulin">Intravenous immune
									globulin</label>
							</div>
						</div>
						<button type="submit" class="btn btn-default">Submit</button>
					</div>
		</form>
		<div class="panel-footer text-right">
						    <small>&copy; Treatment Management</small>
						</div>
	</div>
	</div>
	</div>
</body>
</html>