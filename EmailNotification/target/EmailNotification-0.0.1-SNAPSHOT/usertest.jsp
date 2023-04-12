<%@page import="com.emailnotification.bean.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
    <%@ page import="java.util.*"%>
    <%@ page import="java.util.Date" %>
    <%@ page import="java.text.SimpleDateFormat" %>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Information</title>
<link href="https://fonts.googleapis.com/css?family=Inter&display=swap" rel="stylesheet">
</head>
<body>
    <%
    User user = (User) session.getAttribute("user");
	%>
<div class=desktop___1_1_35>
  <div class=group_3_1_36>
    <div class=desktop___1_1_37>
      
      <div class="rectangle_2_1_38"></div>
      
      <div class="rectangle_3_1_39"></div>
      <span  class="triumph_residential_1_40">Triumph Residential</span>
      
      <span  class="welcome_tenant_name_1_41"> Welcome <%= user.getName() %></span>
      
      <div class=group_2_1_42>
        <div class="rectangle_4_1_43"></div>
      </div>
      
      <span  class="tenant_name___1_51"> Tenant Name: <%= user.getName()%></span>
      
      <span  class="property_name___1_52"> Property Name: <%= user.getPropertyname()%></span>
      
      <span  class="unit___1_53"> Unit: <%= user.getUnit()%></span>
      
      <span  class="vehicle_model___1_54"> vehicle model: <%= user.getVehiclemodel1()%></span>
      
      <span  class="vehicle_registration_number___1_55"> vehicle registration number: <%= user.getVehiclenumber1()%></span>
      
      <span  class="vehicle_license_number___1_56"> vehicle license number: <%= user.getLicensenumber1()%></span>
      
      <span class="vehicle_registration_expire_date___1_57"> Vehicle registration expires on: 
      <% 
      String expireDateStr = user.getRegistrationexpiredate1();
      boolean isExpired = false;
    
      if(expireDateStr != null && !expireDateStr.isEmpty()) {
      try {
        SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yy");
        Date expireDate = dateFormat.parse(expireDateStr);
        Date currentDate = new Date();
        
        if(expireDate.before(currentDate)) {
          isExpired = true;
        }
        
        expireDateStr = dateFormat.format(expireDate); // Format the date object to a string
       } catch(Exception e) {
        e.printStackTrace();
       }
     }
  
     if(isExpired) { 
      out.print("<span style=\"color: red; animation: blinker 1.5s linear infinite; font-family: sans-serif;} @keyframes blinker { 50% { opacity: 0; }\">Expired</span>");
     } else { 
      out.print(expireDateStr);
     } 
     %></span>
     
      <span class="vehicle_insurance_expire_date___1_58"> Vehicle insurance expires on:  
      <% 
      String expireDateStr1 = user.getInsuranceexpiredate1();
      boolean isExpired3 = false;
    
      if(expireDateStr1 != null && !expireDateStr1.isEmpty()) {
      try {
        SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yy");
        Date expireDate = dateFormat.parse(expireDateStr);
        Date currentDate = new Date();
        
        if(expireDate.before(currentDate)) {
          isExpired = true;
        }
        
        expireDateStr = dateFormat.format(expireDate); // Format the date object to a string
       } catch(Exception e) {
        e.printStackTrace();
       }
      }
  
      if(isExpired3) { 
      out.print("<span style=\"color: red; animation: blinker 1.5s linear infinite; font-family: sans-serif;} @keyframes blinker { 50% { opacity: 0; }\">Expired</span>");
      } else { 
      out.print(expireDateStr1);
     } 
     %></span>

      
      <span  class="status___1_59">status1: <%=user.getStatus1()%></span>
      
       <div class=group_2_2_42>
        <div class="rectangle_4_2_43"></div>
      </div>
      
      <span  class="vehicle_model___2_54"> vehicle model2: <%= user.getVehiclemodel2()%></span>
      
      <span  class="vehicle_registration_number___2_55"> vehicle registration2 number: <%= user.getVehiclenumber2()%></span>
      
      <span  class="vehicle_license_number___2_56"> vehicle license2 number: <%= user.getLicensenumber2()%></span>
      
      <span class="vehicle_registration_expire_date___2_57"> Vehicle registration2 expires on:  
      <% 
       String expireDateStr2 = user.getRegistrationexpiredate2();
       boolean isExpired1 = false;
    
       if(expireDateStr2 != null && !expireDateStr2.isEmpty()) {
       try {
        SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yy");
        Date expireDate = dateFormat.parse(expireDateStr2);
        Date currentDate = new Date();
        
        if(expireDate.before(currentDate)) {
          isExpired = true;
        }
        
        expireDateStr = dateFormat.format(expireDate); // Format the date object to a string
       } catch(Exception e) {
        e.printStackTrace();
       }
     }
  
     if(isExpired1) { 
      out.print("<span style=\"color: red; animation: blinker 1.5s linear infinite; font-family: sans-serif;} @keyframes blinker { 50% { opacity: 0; }\">Expired</span>");
     } else { 
      out.print(expireDateStr2);
     } 
     %></span>
     
      <span class="vehicle_insurance_expire_date___2_58"> Vehicle insurance2 expires on:  
      <% 
      String expireDateStr3 = user.getInsuranceexpiredate2();
      boolean isExpired2 = false;
    
      if(expireDateStr3 != null && !expireDateStr3.isEmpty()) {
      try {
        SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yy");
        Date expireDate = dateFormat.parse(expireDateStr3);
        Date currentDate = new Date();
        
        if(expireDate.before(currentDate)) {
          isExpired = true;
        }
        
        expireDateStr = dateFormat.format(expireDate); // Format the date object to a string
       } catch(Exception e) {
        e.printStackTrace();
       }
      }
  
     if(isExpired2) { 
      out.print("<span style=\"color: red; animation: blinker 1.5s linear infinite; font-family: sans-serif;} @keyframes blinker { 50% { opacity: 0; }\">Expired</span>");
     } else { 
      out.print(expireDateStr3);
    } 
    %></span>
   
      <span  class="status___2_59"> status2: <%= user.getStatus2()  %></span> 
      
      <div class="rectangle_6_1_62"></div>
      
      <span  class="registration_document_1_61"> Registration Document: </span>
       
      
      <span  class="insurance_document_1_63"> Insurance Document: </span>
       
      
      <div class="rectangle_7_1_64"></div>
      <div class="rectangle_8_1_67"></div>
      
      <span  class="choose_file_1_65">
     
     <form method="post" action="upload" enctype="multipart/form-data">
		<input type="file" name="File"><br>
		<input type="submit" value="Upload"></form> </span>
       
     
      <span  class="chosse_file_1_66">
      <form method="post" action="upload" enctype="multipart/form-data">
		<input type="file" name="File"><br>
		<input type="submit" value="Upload"></form> </span>
		 
     
		<div class="rectangle_6_2_62"></div>
      
      <span  class="registration_document_2_61"> Registration Document: </span>
       
      
      <span  class="insurance_document_2_63"> Insurance Document: </span>
       
      
      <div class="rectangle_7_2_64"></div>
      <div class="rectangle_8_2_67"></div>
      
      <span  class="choose_file_2_65">
       
     <form method="post" action="upload" enctype="multipart/form-data">
		<input type="file" name="File"><br>
		<input type="submit" value="Upload"></form> </span>
      
      <span  class="chosse_file_2_66">
      <form method="post" action="upload" enctype="multipart/form-data">
		<input type="file" name="File"><br>
		<input type="submit" value="Upload"></form> </span>
      
      <div class="line_1_14_59"></div>
      <div class="rectangle_9_14_61"></div>
      <form action="LogoutServlet" method="GET">
  
  <button type="submit">Logout</button> </form></div> 
    </div>
  </div>
</div>
</body>

<style>
.1_35 { 
	overflow:hidden;
}

.desktop___1_1_35 { 
	background-color:rgba(255, 255, 255, 1);
	width:1920px;
	height:1080px;
	position:absolute;
}
.group_3_1_36 { 
	width:1920px;
	height:1080px;
	position:absolute;
	left:0px;
	top:0px;
}
.desktop___1_1_37 { 
	background-color:rgba(255, 255, 255, 1);
	width:1920px;
	height:1080px;
	position:absolute;
	left:0px;
	top:0px;
}
.rectangle_2_1_38 { 
	background-color:rgba(113.8147759437561, 202.83357203006744, 208.5156199336052, 1);
	width:1920px;
	height:156px;
	position:absolute;
	left:0px;
	top:0px;
}
.rectangle_3_1_39 { 
	background-color:rgba(113.8147759437561, 202.83357203006744, 208.5156199336052, 1);
	width:1600px;
	height:950px;
	position:absolute;
	left:164px;
	top:204px;
	border-radius:20px;
}
.triumph_residential_1_40 { 
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
.welcome_tenant_name_1_41 { 
	color:rgba(255, 255, 255, 1);
	width:323px;
	height:37px;
	position:absolute;
	left:851px;
	top:269px;
	font-family:Inter;
	text-align:center;
	font-size:24px;
	letter-spacing:0;
}
.group_2_1_42 { 
	width:925px;
	height:537px;
	position:absolute;
	left:274px;
	top:339px;
}
.rectangle_4_1_43 { 
	background-color:rgba(255, 255, 255, 0.5799999833106995);
	width:1355px;
	height:737px;
	position:absolute;
	left:0px;
	top:0px;
	border-top-left-radius:20px;
	border-top-right-radius:20px;
	border-bottom-left-radius:20px;
	border-bottom-right-radius:20px;
}

.tenant_name___1_51 { 
	color:rgba(0, 0, 0, 1);
	width:323px;
	height:30px;
	position:absolute;
	left:439px;
	top:379px;
	font-family:Inter;
	text-align:left;
	font-size:14px;
	letter-spacing:0;
}
.property_name___1_52 { 
	color:rgba(0, 0, 0, 1);
	width:323px;
	height:30px;
	position:absolute;
	left:439px;
	top:459px;
	font-family:Inter;
	text-align:left;
	font-size:14px;
	letter-spacing:0;
}
.unit___1_53 { 
	color:rgba(0, 0, 0, 1);
	width:323px;
	height:30px;
	position:absolute;
	left:439px;
	top:529px;
	font-family:Inter;
	text-align:left;
	font-size:14px;
	letter-spacing:0;
}
.vehicle_model___1_54 { 
	color:rgba(0, 0, 0, 1);
	width:323px;
	height:30px;
	position:absolute;
	left:439px;
	top: 599px;
	font-family:Inter;
	text-align:left;
	font-size:14px;
	letter-spacing:0;
}
.vehicle_registration_number___1_55 { 
	color:rgba(0, 0, 0, 1);
	width:323px;
	height:30px;
	position:absolute;
	left:439px;
	top:676px;
	font-family:Inter;
	text-align:left;
	font-size:14px;
	letter-spacing:0;
}
.vehicle_license_number___1_56 { 
	color:rgba(0, 0, 0, 1);
	width: 323px;
	height: 30px;
	position:absolute;
	left:439px;
	top: 761px;
	font-family:Inter;
	text-align:left;
	font-size:14px;
	letter-spacing:0;
}
.vehicle_registration_expire_date___1_57 { 
	color:rgba(0, 0, 0, 1);
	width:323px;
	height:30px;
	position:absolute;
	left:439px;
	top:829px;
	font-family:Inter;
	text-align:left;
	font-size:14px;
	letter-spacing:0;
            }
.vehicle_insurance_expire_date___1_58 { 
	color:rgba(0, 0, 0, 1);
	width:323px;
	height:30px;
	position:absolute;
	left:439px;
	top:891px;
	font-family:Inter;
	text-align:left;
	font-size:14px;
	letter-spacing:0;
	 
}
.status___1_59 { 
	color:rgba(0, 0, 0, 1);
	width:323px;
	height:30px;
	position:absolute;
	left:439px;
	top:961px;
	font-family:Inter;
	text-align:left;
	font-size:14px;
	letter-spacing:0;
}
.rectangle_6_1_62 { 
	background-color:rgba(237.20312297344208, 242.24999696016312, 241.9471836090088, 0.6899999976158142);
	width:432px;
	height:496px;
	position:absolute;
	left:984px;
	top:419px;
}
.registration_document_1_61 { 
	color:rgba(0, 0, 0, 1);
	width:732px;
	height:51px;
	position:absolute;
	left:839px;
	top:483px;
	font-family:Inter;
	text-align:center;
	font-size:14px;
	letter-spacing:0;
}
.insurance_document_1_63 { 
	color:rgba(0, 0, 0, 1);
	width:732px;
	height:51px;
	position:absolute;
	left:839px;
	top:701px;
	font-family:Inter;
	text-align:center;
	font-size:14px;
	letter-spacing:0;
}
 
.choose_file_1_65 { 
	color:rgba(0, 0, 0, 1);
	width:586px;
	height:14px;
	position:absolute;
	left:917px;
	top:532px;
	font-family:Inter;
	text-align:center;
	font-size:14px;
	letter-spacing:0;
}


.chosse_file_1_66 { 
	color:rgba(0, 0, 0, 1);
	width:585px;
	height:16px;
	position:absolute;
	left:918px;
	top:764px;
	font-family:Inter;
	text-align:center;
	font-size:14px;
	letter-spacing:0;
}

.14_59 { 
	 border:3px solid rgba(91.37499645352364, 91.37499645352364, 91.37499645352364, 1);
}

.group_2_2_42 { 
	width:925px;
	height:537px;
	position:absolute;
	left:274px;
	top:1390px;
}
.rectangle_4_2_43 { 
	background-color:rgba(255, 255, 255, 0.5799999833106995);
	width:2355px;
	height:1437px;
	position:absolute;
	left:0px;
	top:0px;
	border-top-left-radius:40px;
	border-top-right-radius:40px;
	border-bottom-left-radius:40px;
	border-bottom-right-radius:40px;
} 


.vehicle_model___2_54 { 
	color:rgba(0, 0, 0, 1);
	width:323px;
	height:30px;
	position:absolute;
	left:439px;
	top: 1199px;
	font-family:Inter;
	text-align:left;
	font-size:14px;
	letter-spacing:0;
}
.vehicle_registration_number___2_55 { 
	color:rgba(0, 0, 0, 1);
	width:323px;
	height:30px;
	position:absolute;
	left:439px;
	top:1276px;
	font-family:Inter;
	text-align:left;
	font-size:14px;
	letter-spacing:0;
}
.vehicle_license_number___2_56 { 
	color:rgba(0, 0, 0, 1);
	width: 323px;
	height: 30px;
	position:absolute;
	left:439px;
	top: 1361px;
	font-family:Inter;
	text-align:left;
	font-size:14px;
	letter-spacing:0;
}
.vehicle_registration_expire_date___2_57 { 
	color:rgba(0, 0, 0, 1);
	width:323px;
	height:30px;
	position:absolute;
	left:439px;
	top:1429px;
	font-family:Inter;
	text-align:left;
	font-size:14px;
	letter-spacing:0;
}
.vehicle_insurance_expire_date___2_58 { 
	color:rgba(0, 0, 0, 1);
	width:227px;
	height:30px;
	position:absolute;
	left:439px;
	top:1491px;
	font-family:Inter;
	text-align:left;
	font-size:14px;
	letter-spacing:0;
}
.status___2_59 { 
	color:rgba(0, 0, 0, 1);
	width:119px;
	height:30px;
	position:absolute;
	left:439px;
	top:1561px;
	font-family:Inter;
	text-align:left;
	font-size:14px;
	letter-spacing:0;
}
.rectangle_6_2_62 { 
	background-color:rgba(237.20312297344208, 242.24999696016312, 241.9471836090088, 0.6899999976158142);
	width:432px;
	height:496px;
	position:absolute;
	left:984px;
	top:1199px;
}
.registration_document_2_61 { 
	color:rgba(0, 0, 0, 1);
	width:732px;
	height:51px;
	position:absolute;
	left:839px;
	top:1283px;
	font-family:Inter;
	text-align:center;
	font-size:14px;
	letter-spacing:0;
}
.insurance_document_2_63 { 
	color:rgba(0, 0, 0, 1);
	width:732px;
	height:51px;
	position:absolute;
	left:839px;
	top:1443px;
	font-family:Inter;
	text-align:center;
	font-size:14px;
	letter-spacing:0;
}
 
.choose_file_2_65 { 
	color:rgba(0, 0, 0, 1);
	width:586px;
	height:14px;
	position:absolute;
	left:917px;
	top:1323px;
	font-family:Inter;
	text-align:center;
	font-size:14px;
	letter-spacing:0;
}


.chosse_file_2_66 { 
	color:rgba(0, 0, 0, 1);
	width:585px;
	height:16px;
	position:absolute;
	left:918px;
	top:1484px;
	font-family:Inter;
	text-align:center;
	font-size:14px;
	letter-spacing:0;
}


.line_2_14_59 { 
	width:331px;
	height:0px;
	position:absolute;
	left:785px;
	top:576px;
}

.logout_14_62 { 
  color:rgba(0, 0, 0, 1);
	width:585px;
	height:16px;
	position:absolute;
	left:918px;
	top:764px;
	font-family:Inter;
	text-align:center;
	font-size:14px;
	letter-spacing:0;
}

 
input[type="submit"] {
  background-color:rgba(255, 255, 255, 1);
  color: black;
  padding: 10px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

.registration_document_1_61,
.registration_document_2_61,
.insurance_document_1_63,
.insurance_document_2_63 {
font-weight: bold;
margin-right: 10px;
}

 

.choose_file_1_65,
.choose_file_1_66,
.choose_file_2_65,
.choose_file_2_66 {
margin-top: 10px;
display: block;
}

.rectangle_6_2_62,
.rectangle_7_1_64,
.rectangle_7_2_64,
.rectangle_8_1_67,
.rectangle_8_2_67 {
height: 1px;
background-color: #ccc;
margin-top: 10px;
}
</style>
</html>