<%@ include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

		<form>
			<p>Check the below symptoms you have</p>
			<div class="row">
				<div class="col-lg-4">
					<div class="panel panel-default">
						<div class="panel-heading">Common Symptoms</div>
						<div class="panel-body">
							<div class="checkbox">
								<label><input type="checkbox" name="fever" value="Y">Fever</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" name="cough" value="Y">Dry
									Coughs</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" name="tired" value="Y">Tiredness</label>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="panel panel-default">
						<div class="panel-heading">Less Common Symptoms</div>
						<div class="panel-body">
							<div class="checkbox">
								<label><input type="checkbox" name="bodypain" value="Y">Pain
									and Aches</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" name="sorethroat"
									value="Y">Sore Throat</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" name="ltastesmell"
									value="Y">Lost Smell or Taste</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" name="diarrhoea" value="Y">Diarrhoea</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" name="headache" value="Y">Headache</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" name="conjunctivitis"
									value="Y">Conjunctivitis</label>
							</div>
						</div>
					</div>


				</div>
				<div class="col-lg-4">
					<div class="panel panel-default">
						<div class="panel-heading">Serious Symptoms</div>
						<div class="panel-body">
							<div class="checkbox">
								<label><input type="checkbox" name="diffbreathing"
									value="Y">Difficulty in Breathing</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" name="speechless"
									value="Y">Loss of Speech or Movement</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" name="chestpain" value="Y">Chest
									Pain</label>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col col-lg-3">
					<p>Check the pre-existing health condition you have</p>
				</div>
				<div class="col col-lg-3">
					<div class="checkbox">
						<label><input type="checkbox" name="diabities" value="Y">Diabetes</label>
					</div>
					<div class="checkbox">
						<label><input type="checkbox" name="liverdisease"
							value="Y">Liver Disease</label>
					</div>
					<div class="checkbox">
						<label><input type="checkbox" name="kidneydisease"
							value="Y">Kidney Disease</label>
					</div>
					<div class="checkbox">
						<label><input type="checkbox" name="overweight" value="Y">Sever
							Over Weight</label>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col col-lg-3">
					<p>Select your age group</p>
				</div>
				<div class="col col-lg-3">
					<select name="age">
						<option value="-1">-Select-</option>
						<option value="GRP1">1 to 20</option>
						<option value="GRP2">21 to 40</option>
						<option value="GRP3">41 to 60</option>
						<option value="GRP4">61 to 80</option>
						<option value="GRP5">81 to 100</option>
						<option value="GRP6">100 and above</option>
					</select>
				</div>
			</div>

			<div class="row">
				<div class="col col-lg-3">
					<p>Select your gender</p>
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
					<p>Email</p>
				</div>
				<div class="col col-lg-3">
					<input type="email" name="pemail" />
				</div>
			</div>

			<div class="row">
				<div class="col col-lg-3">
					<p>Mention the places you have visited since last week.</p>
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
		</form>
	</div>
</body>
</html>