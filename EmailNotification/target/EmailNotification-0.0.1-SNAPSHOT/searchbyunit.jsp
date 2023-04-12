<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
    <%@ page import="java.util.*"%> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html" charset="ISO-8859-1">
<title>search by unit</title>
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
<table style="width:100%">
 
<tr>
<th>Id</th>
<th>Property Name</th>
<th>Unit</th>
<th>Resident</th>
<th>Tenant Name</th>
<th>Email ID<th>
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
	ResultSet resultset =  stmt.executeQuery("SELECT * FROM test WHERE id="+Integer.parseInt(request.getParameter("cmbUnit")));
	while(resultset.next())
	{
		%>
	 
		<tr>
		<td><%= resultset.getInt("id") %></td>
		<td><%= resultset.getString("propertyname") %></td>
		<td><%= resultset.getInt("unit") %></td>
		<td><%= resultset.getString("resident") %></td>
		<td><%= resultset.getString("name") %></td>
		<td><%= resultset.getString("emailid") %></td>
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
		<form action="NotificationServlet" method="POST">
		<input type="submit" name="accept" id="accept" value="Accept" style="background-color: #4CAF50; color: white; padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; font-size: 16px;">
        <input type="submit" name="decline" id="decline" value="Decline" style="background-color: #f44336; color: white; padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; font-size: 16px;"></td></form>
		<td><%= resultset.getString("registrationexpiredate1") %></td>
		<td><%= resultset.getString("insurancev1doc") %>
		<form action="NotificationServlet" method="POST">
		<input type="submit" name="accept" id="accept" value="Accept" style="background-color: #4CAF50; color: white; padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; font-size: 16px;">
        <input type="submit" name="decline" id="decline" value="Decline" style="background-color: #f44336; color: white; padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; font-size: 16px;"></td></form>
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
		<input type="submit" name="accept" id="accept" value="Accept" style="background-color: #4CAF50; color: white; padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; font-size: 16px;">
        <input type="submit" name="decline" id="decline" value="Decline" style="background-color: #f44336; color: white; padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; font-size: 16px;"></td>
		<td><%= resultset.getString("registrationexpiredate2") %></td>
		<td><%= resultset.getString("insurancev2doc") %>
		<input type="submit" name="accept" id="accept" value="Accept" style="background-color: #4CAF50; color: white; padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; font-size: 16px;">
        <input type="submit" name="decline" id="decline" value="Decline" style="background-color: #f44336; color: white; padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; font-size: 16px;"></td>
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
table{
 width:298px;
	height:54px;
 position:absolute;
 
	top:212px;
	border-top-left-radius:5px;
	border-top-right-radius:5px;
	border-bottom-left-radius:5px;
	border-bottom-right-radius:5px;

}
table, th, td {
  border: 1px solid white;
  border-collapse: collapse;
  text-align: center;
  display: absolute;
  font-color: rgba(255,255,255);
   font-size: 20px;
 
}

th {
background-color: rgba(114, 203, 209, 100);
color: rgba(255,255,255);
border-radius: 4px;
top: 220px;
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
	width:2760px;
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
}
</style>
</html>