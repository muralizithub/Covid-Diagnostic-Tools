<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CovId Screen Test</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.min.css" rel="stylesheet">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/common.js"></script>
</head>
<body>

<!-- Header -->
<div class="row">
	<div class="col col-lg-1">
		<!--  Logo Goes here -->
	</div>
	<div class="col col-lg-8">
		<h1 align="center"><b>Hospital Management System</b></h1>
	</div>
	<div class="col col-lg-3">
		<!--  Login information goes here -->
	</div>
</div>
<!-- End Header -->

<!--  Navigation Bar Being -->
<nav class="navbar navbar-default ">
  <div class="container-fluid">
  
   <div class="navbar-header">
		<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#doctor-menu" aria-expanded="false">
		</button> 			
   	</div>
    </div>
    
    <div class="collapse navbar-collapse" id="doctor-menu">
      <ul class="nav navbar-nav">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-doctor" aria-hidden="true"></span>Doctor <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="addoc.jsp">Add Doctor</a></li>
            <li><a href="addoc.jsp">Update Doctor</a></li>
            <li><a href="addoc.jsp">Delete Doctor</a></li>
          </ul>
        </li>
      </ul>
      
      <ul class="nav navbar-nav">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Patient <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="addpt.jsp">Add Patient</a></li>
            <li><a href="addpt.jsp">Update Patient Details</a></li>
            <li><a href="dischrg.jsp">Discharge Patient</a></li>
          </ul>
        </li>
      </ul>
      
      <ul class="nav navbar-nav">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Nurse<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="adnurse.jsp">Add Nurse</a></li>
            <li><a href="adnurse.jsp">Update Nurse Details</a></li>
            <li><a href="adnurse.jsp">Delete Nurse Patient</a></li>
          </ul>
        </li>
      </ul>
      
      <ul class="nav navbar-nav">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Work Time<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="empattn.jsp">Employee Worktime</a></li>
          </ul>
        </li>
      </ul>
      
      <ul class="nav navbar-nav">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Diagnosis<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="covid_diag.jsp">CovId-2 Screen Test</a></li>
            <li><a href="covid_diag_methods.jsp">Diagnosis Methods</a></li>
          </ul>
        </li>
      </ul>
      
      <ul class="nav navbar-nav">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Department<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="DEPT.jsp">Department Details</a></li>
          </ul>
        </li>
      </ul>
      
      <ul class="nav navbar-nav">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Medicine<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="addmed.jsp">Add Medicine</a></li>
            <li><a href="addmed.jsp">Update Medicine Details</a></li>
            <li><a href="addmed.jsp">Delete Expired Medicine</a></li>
          </ul>
        </li>
      </ul>
      
      <ul class="nav navbar-nav">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Reports<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="docrep.jsp">Doctor</a></li>
            <li><a href="patrep.jsp">Patient</a></li>
            <li><a href="medrep.jsp">Medicine</a></li>
          </ul>
        </li>
      </ul>
      
    </div>
</nav>
<!-- Navigation Bar End -->
</body>
</html>