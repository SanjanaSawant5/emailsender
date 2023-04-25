<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%> 
 
 
 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html" charset="ISO-8859-1">
<link href="bootstrap.css" type="text/css" rel="stylesheet">
</head>

<center>
<h2>dropdown search for property</h2>
</center>
<div class = "container">
<form action="adminportal.jsp" method="POST">
<center>
<div class="rectangle_4_25_67"></div>
<div class="polygon_1_25_68"></div>
<span class="property_list__26_106"><strong>Property Names: </strong>
</div>
</div>

<div class="rectangle_5_26_107"></div><span  class="select_property_26_108">
<select class="form-control" name="cmbProperty" onchange= "this.form.submit();">
<option value="0">Select Property</option></span>


<%
try
{
	Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/parkingportal","root","Intern@1234");
	Statement stm = conn.createStatement();
	ResultSet rs =  stm.executeQuery("SELECT DISTINCT propertycode, propertyname from demo");
	while(rs.next()) {
%>
<option value="<%=rs.getInt("propertycode")%>"

<% 
if(request.getParameter("cmbProperty")!=null)
{
	if(rs.getInt("propertycode")==Integer.parseInt(request.getParameter("cmbProperty")))
	{
		out.println("selected");
	}
}
%>
>
<%=rs.getString("propertyname")%></option>
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
<th>Tenant Name</th>
<th>Tenant Unit</th>
<th>Tenant Email</th>
<th>Tenant Mail</th>
</tr>
 
<c:forEach items="${tandemparkings}" var="tandemparking">
<tr>
<td>${tandemparking.name}</td>
<td>${tandemparking.unit}</td>
<td>${tandemparking.emailid}</td>
<td>
<a href="/sendMail/${tandemparking.id}?action=accept">Accept</a>
<a href="/sendMail/${tandemparking.id}?action=reject">Reject</a>
</td>
</tr>
</c:forEach>
 
</table>
<style>
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
	width:1920px;
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
	left:898px;
	top:269px;
	border-top-left-radius:5px;
	border-top-right-radius:5px;
	border-bottom-left-radius:5px;
	border-bottom-right-radius:5px;
}
.polygon_1_25_68 { 
	transform: rotate(-180deg);
	width:28.578838348388672px;
	height:15px;
	position:absolute;
	left:632.078857421875px;
	top:306px;
}

.polygon_1_25_68 { 
	transform: rotate(-180deg);
	width:28.578838348388672px;
	height:15px;
	position:absolute;
	left:632.078857421875px;
	top:306px;
}
.property_list__26_106 { 
	color:rgba(0, 0, 0, 1);
	width:212px;
	height:38px;
	position:absolute;
	left:365px;
	top:312px;
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
	left:561px;
	top:319px;
	font-family:Inter;
	text-align:center;
	font-size:12px;
	letter-spacing:0;
}
</style>
</html>