<%@  page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<title>DOCTORS INFORMATION WINDOW</title>

<body background="https://lapolla.com/wp-content/uploads/2014/05/off-gray-background.jpg" bgproperties="fixed">
<div class="container">
<table >
<tr><td>
<h1>DOCTOR PROFILE WINDOW</h1>
</td></tr>
</table>


<div class="container">
  <h3>Doctor Details</h3>
  <form class="form-horizontal" action="/addDoctor" method=post>
  <%!String a="",b="",d="",e="",f="",g="",h="",i="",j=""; %>
  
  <div class="form-group">
      <label class="control-label col-sm-2" >DOCTOR ID:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="doctorid" placeholder="Enter doctor id" name="t1">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" >DOCTOR NAME:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="drname" placeholder="Enter name" name="t2">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" >DOCTOR QUALIFICATION:</label>
      <div class="col-sm-8">          
        <input type="text" class="form-control" id="drqua" placeholder="Enter qualification" name="t3">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" >DATE OF BIRTH:</label>
      <div class="col-sm-8">          
        <input type="text" class="form-control" id="dob" placeholder="Enter DOB" name="t4">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" >SALARY:</label>
      <div class="col-sm-8">          
        <input type="text" class="form-control" id="salary" placeholder="Enter salary" name="t5">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" >FATHER'S NAME:</label>
      <div class="col-sm-8">          
        <input type="text" class="form-control" id="fname" placeholder="Enter father's name" name="t6">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" >EMAIL ID:</label>
      <div class="col-sm-8">          
        <input type="text" class="form-control" id="email" placeholder="Enter email id" name="t7">
      </div>
    </div>
    
      <div class="form-group">
      <label class="control-label col-sm-2" >DEPARTMENT ID:</label>
      <div class="col-sm-8">          
        <input type="text" class="form-control" id="deptid" placeholder="Enter department id" name="t8">
      </div>
    </div>
   
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" name="Button1" class="btn btn-default">ADD DOCTOR PROFILE</button>
         <button type="submit" name="Button1" class="btn btn-default">UPDATE DOCTOR PROFILE</button>
          <button type="submit" name="Button1" class="btn btn-default">DELETE DOCTOR PROFILE</button>
      </div>
    </div>
  </form>
</div>
<%
try
{	a=request.getParameter("Button1"); 
	if(a.equals("SEARCH DOCTOR PROFILE"))
	{
	String str1= request.getParameter("t1");
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection c=DriverManager.getConnection ("jdbc:odbc:abc", "root", "data");
	Statement s= c.createStatement();
	if(str1!="")
	{	
		String sql2="select * from doctor where doc_id='"+str1+"'";
		ResultSet r=s.executeQuery(sql2);
		if(r.next())
		{
			j=r.getString(1);
			b=r.getString(2);	
			d=r.getString(3);
			e=r.getString(4);
			f=r.getString(5);
			g=r.getString(6);
			h=r.getString(7);
			i=r.getString(8);
		}
		else
		{	
			%><script language="javascript">
			alert("DOCTOR ID=<%=str1%>does not exist in database..!!!");
			</script>
			<%			
		}	
		
	}
	else
	{
		%><script language="javascript">
		alert("ENTER DOCTOR ID TO SEARCH..!!!");
		</script>
		<%		
	}
	}
}catch(Exception e) {}
%>
<%
try{
	
	a=request.getParameter("Button1");
	String str1= request.getParameter("t1");
	String str2= request.getParameter("t2");
	String str3= request.getParameter("t3");
	String str4= request.getParameter("t4");
	String str5= request.getParameter("t5");
	String str6= request.getParameter("t6");
	String str7= request.getParameter("t7");
	String str8= request.getParameter("t8");
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection c=DriverManager.getConnection ("jdbc:odbc:abc", "root", "data");
	Statement s= c.createStatement();
	if(a.equals("ADD DOCTOR PROFILE"))
	{	

	if(str1!=""&&str2!=""&&str3!=""&&str4!=""&&str5!=""&&str6!=""&&str7!=""&&str8!="")
	{	
		String sql="insert into doctor values("+str1+",'"+str2+"','"+str3+"','"+str4+"',"+str5+",'"+str6+"','"+str7+"',"+str8+")";
		out.println(sql);
		s.execute(sql);
		%><script language="javascript">
		alert("INSERT SUCESSFUL");
		</script>
		<%
	}
	else
	{
		%><script language="javascript">
		alert("ENTER COMPLETE DETAILS..!!!");
		</script>
		<%		
	}
	}
	else if(a.equals("DELETE DOCTOR PROFILE"))
	{
		if(str1!="")
		{
			String sq="select * from doctor where doc_id="+str1+"";
			ResultSet rs1=s.executeQuery(sq);
			if(rs1.next())
			{	
				
				String sql="delete from doctor where doc_id="+str1+"";
				s.execute(sql);
				%><script language="javascript">
				alert("PROFILE OF DOCTOR WITH ID <%=str1%>DELETED");
				</script>
				<%
			}
			else
			{
				%><script language="javascript">
				alert("INVALID DOCTOR ID <%=str1%>..!!!");
				</script>
				<%
			}
		}
		else
		{
			%><script language="javascript">
			alert("ENTER DOCTOR'S ID TO DELETE..!!!");
			</script>
			<%	
		}
	}
	else if(a.equals("UPDATE DOCTOR PROFILE"))
	{
		if(str1!="")
		{
			String sq="select * from doctor where doc_id="+str1+"";
			ResultSet rs1=s.executeQuery(sq);
			if(rs1.next())
			{	
				String sql="delete from doctor where doc_id="+str1+"";
				s.execute(sql);
				String sql1="insert into doctor values("+str1+",'"+str2+"','"+str3+"','"+str4+"',"+str5+",'"+str6+"','"+str7+"',"+str8+")";
				s.execute(sql1);
				%><script language="javascript">
				alert("PROFILE OF DOCTOR WITH ID <%=str1%>EDITED");
				</script>
				<%
			}
			else
			{
				%><script language="javascript">
				alert("INVALID DOCTOR ID <%=str1%>..!!!");
				</script>
				<%
			}
		}
		else
		{
			%><script language="javascript">
			alert("ENTER DOCTOR'S ID TO UPDATE..!!!");
			</script>
			<%	
		}
	}
	}catch(Exception e) {}

%>

</form>
<input type="button" name="bttn" value="HOME" onclick="location.href='home.jsp'">

</body>
</html>
