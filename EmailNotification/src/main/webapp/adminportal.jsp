<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
    <%@ page import="java.util.*"%> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html" charset="ISO-8859-1">
<title>search by property</title>
<link href="bootstrap.css" type="text/css" rel="stylesheet">
</head>
<body>
<div class=desktop___1_25_60>
  <div class=group_3_25_61>
    <div class=desktop___1_25_62>
      <div class="rectangle_2_25_64"></div><span  class="triumph_residential_25_65">Triumph Residential</span>
      <div class="rectangle_4_25_67"></div>
      <div class="polygon_1_25_68"></div>
    </div>
  </div>
</div>
<center>
</center>
<div class = "container">
<form action="searchbyunit.jsp" method="POST">
<center>
<div class="rectangle_4_25_67"></div>
<div class="polygon_1_25_68"></div>
<strong>Unit: </strong>
</div>
</div>
<div class="rectangle_5_26_107"></div><span  class="select_property_26_108">
<select class="form-control" name="cmbUnit" onchange= "this.form.submit();">
<option value="0">Select Unit</option>


<%
try
{
	Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/parkingportal","root","Intern@1234");
	Statement stm = conn.createStatement();
	ResultSet rs =  stm.executeQuery("SELECT DISTINCT id, unit, propertycode from test where propertycode="+Integer.parseInt(request.getParameter("cmbProperty")));
	 
	while(rs.next()) {
%>
<option value="<%=rs.getInt("id")%>"

<% 
if(request.getParameter("cmbUnit")!=null)
{
	if(rs.getInt("propertycode")==Integer.parseInt(request.getParameter("cmbUnit")))
	{
		out.println("selected");
	}
}
%>
>
<%=rs.getString("unit")%>
</option>
<% 
	}
	conn.close();
	rs.close();
}
catch(Exception ex)
{
	ex.printStackTrace();
}

%>

</center>
</select>
<br><br><br>
</div>
<table style="width:100%">
 
<tr>
<th>Id</th>
<th>Property Name</th>
<th>Unit</th>
<th>Resident</th>
<th>Tenant Name</th>
<th>Move In</th>
<th>Move Out</th>
<th>Parking Space 1</th>
<th>Parking Level 1</th>
<th>Parking Type 1</th>
<th>Vehicle Number 1</th>
<th>Registration Tenant Name 1</th>
<th>License Number 1</th>
<th>Vehicle Model 1</th>
<th> Registration v1 Document</th>
<th>Registration Expire Date</th>
<th>Insurance v1 Document</th>
<th>Insurance Expire Date 1 </th>
<th>Status 1</th>
<th>Parking Space 2</th>
<th>Parking Level 2</th>
<th>Parking Type 2</th>
<th>Vehicle Number 2</th>
<th>Registration Tenant Name 2</th>
<th>License Number 2</th>
<th>Vehicle Model 2</th>
<th> Registration v2 Document</th>
<th>Registration Expire Date</th>
<th>Insurance v2 Document</th>
<th>Insurance Expire Date 2</th>
<th>Status 2</th>
</tr>
<%
try
{
	Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parkingportal","root","Intern@1234");
	Statement stmt = con.createStatement();
	ResultSet resultset =  stmt.executeQuery("SELECT * FROM test WHERE propertycode="+Integer.parseInt(request.getParameter("cmbProperty")));
	while(resultset.next())
	{
		%>
	 
		<tr>
		<td><%= resultset.getInt("id") %></td>
		<td><%= resultset.getString("propertyname") %></td>
		<td><%= resultset.getInt("unit") %></td>
		<td><%= resultset.getString("resident") %></td>
		<td><%= resultset.getString("name") %></td>
		<td><%= resultset.getString("movein") %></td>
		<td><%= resultset.getString("moveout") %></td>
		<td><%= resultset.getString("parkingspace1") %></td>
		<td><%= resultset.getString("parkinglevel1") %></td>
		<td><%= resultset.getString("parkingtype1") %></td>
		<td><%= resultset.getString("vehiclenumber1") %></td>
		<td><%= resultset.getString("registrationtenantname1") %></td>
		<td><%= resultset.getString("licensenumber1") %></td>
		<td><%= resultset.getString("vehiclemodel1") %></td>
		<td><%= resultset.getString("registrationv1doc") %> 
		<td><%= resultset.getString("registrationexpiredate1") %></td>
		<td><%= resultset.getString("insurancev1doc") %>
		<td><%= resultset.getString("insuranceexpiredate1") %></td>
		<td><%= resultset.getString("status1") %></td>
		<td><%= resultset.getString("parkingspace2") %></td>
		<td><%= resultset.getString("parkinglevel2") %></td>
		<td><%= resultset.getString("parkingtype2") %></td>
		<td><%= resultset.getString("vehiclenumber2") %></td>
		<td><%= resultset.getString("registrationtenantname2") %></td>
		<td><%= resultset.getString("licensenumber2") %></td>
		<td><%= resultset.getString("vehiclemodel2") %></td>
		<td><%= resultset.getString("registrationv2doc") %>
		<td><%= resultset.getString("registrationexpiredate2") %></td>
		<td><%= resultset.getString("insurancev2doc") %>
		<td><%= resultset.getString("insuranceexpiredate2") %></td>
		<td><%= resultset.getString("status2") %></td>
		</tr>
		<% 
	}
	resultset.close();
	con.close();
}
catch(Exception ex)
{
	ex.printStackTrace();
}
%>
</table>
</form>
</div>
</body>
<style>
table, th, td {
  border: 1px solid grey;
  border-collapse: collapse;
  text-align: center;
  display: absolute;
  font-color: rgba(255,255,255);
  width: 50px; 
  font-size: 20px;
}

th {
background-color: rgba(114, 203, 209, 100);
color: rgba(255,255,255);
border-radius: 4px;
}

td {
 
color: black;
border-radius: 4px;
}
.25_60 { 
	overflow:hidden;
}
.desktop___1_25_60 { 
	background-color:rgba(255, 255, 255, 1);
	width:1920px;
	height:1080px;
	position:absolute;
}
.group_3_25_61 { 
	width:1920px;
	height:156px;
	position:absolute;
	left:0px;
	top:0px;
}
.desktop___1_25_62 { 
	background-color:rgba(255, 255, 255, 1);
	width:1920px;
	height:1080px;
	position:absolute;
	left:0px;
	top:0px;
}
.rectangle_2_25_64 { 
	background-color:rgba(113.8147759437561, 202.83357203006744, 208.5156199336052, 1);
	width:3160px;
	height:156px;
	position:absolute;
	left:0px;
	top:0px;
}
.triumph_residential_25_65 { 
	color:rgba(255, 255, 255, 1);
	width:387px;
	height:56px;
	position:absolute;
	left:81px;
	top:50px;
	font-family:Inter;
	text-align:center;
	font-size:40px;
	letter-spacing:0;
}
.rectangle_4_25_67 { 
	background-color:rgba(255, 255, 255, 1);
	width:298px;
	height:54px;
	position:absolute;
	left:219px;
	top:212px;
	border-top-left-radius:5px;
	border-top-right-radius:5px;
	border-bottom-left-radius:5px;
	border-bottom-right-radius:5px;
	display: none;
}
 
.property_list__26_106 { 
	color:rgba(0, 0, 0, 1);
	width:212px;
	height:38px;
	position:absolute;
	left:219px;
	top:215px;
	font-family:Inter;
	text-align:center;
	font-size:22px;
	letter-spacing:0;
}


.select_property_26_108 { 
	color:rgba(0, 0, 0, 1);
	width:126px;
	height:25px;
	position:absolute; 
	top:219px;
	font-family:Inter;
	text-align:center;
	font-size:12px;
	letter-spacing:0;
}

</style>
</html>