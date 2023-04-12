package com.emailnotification.bean;

public class Admin {
	private int id;
	private String username;
	private String password;
	private int propertycode;
	private String propertyname;
	private int unit;
	private String resident;
	private String name;
	private String vehiclenumber1;
	private String registrationtenantname1;
	private String licensenumber1;
	private String vehiclemodel1;
	private String registrationexpiredate1;
	private String insuranceexpiredate1;
	private String status1;
	private String vehiclenumber2;
	private String registrationtenantname2;
	private String licensenumber2;
	private String vehiclemodel2;
	private String registrationexpiredate2;
	private String insuranceexpiredate2;
	private String status2;
	
	public Admin(int id, String username, String password, int propertycode, String propertyname, int unit,
			String resident, String name, String vehiclenumber1, String registrationtenantname1, String licensenumber1,
			String vehiclemodel1, String registrationexpiredate1, String insuranceexpiredate1, String status1,
			String vehiclenumber2, String registrationtenantname2, String licensenumber2, String vehiclemodel2,
			String registrationexpiredate2, String insuranceexpiredate2, String status2) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.propertycode = propertycode;
		this.propertyname = propertyname;
		this.unit = unit;
		this.resident = resident;
		this.name = name;
		this.vehiclenumber1 = vehiclenumber1;
		this.registrationtenantname1 = registrationtenantname1;
		this.licensenumber1 = licensenumber1;
		this.vehiclemodel1 = vehiclemodel1;
		this.registrationexpiredate1 = registrationexpiredate1;
		this.insuranceexpiredate1 = insuranceexpiredate1;
		this.status1 = status1;
		this.vehiclenumber2 = vehiclenumber2;
		this.registrationtenantname2 = registrationtenantname2;
		this.licensenumber2 = licensenumber2;
		this.vehiclemodel2 = vehiclemodel2;
		this.registrationexpiredate2 = registrationexpiredate2;
		this.insuranceexpiredate2 = insuranceexpiredate2;
		this.status2 = status2;
	}

	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Admin(String username, String password, int propertycode, String propertyname, int unit, String resident,
			String name, String vehiclenumber1, String registrationtenantname1, String licensenumber1,
			String vehiclemodel1, String registrationexpiredate1, String insuranceexpiredate1, String status1,
			String vehiclenumber2, String registrationtenantname2, String licensenumber2, String vehiclemodel2,
			String registrationexpiredate2, String insuranceexpiredate2, String status2) {
		super();
		this.username = username;
		this.password = password;
		this.propertycode = propertycode;
		this.propertyname = propertyname;
		this.unit = unit;
		this.resident = resident;
		this.name = name;
		this.vehiclenumber1 = vehiclenumber1;
		this.registrationtenantname1 = registrationtenantname1;
		this.licensenumber1 = licensenumber1;
		this.vehiclemodel1 = vehiclemodel1;
		this.registrationexpiredate1 = registrationexpiredate1;
		this.insuranceexpiredate1 = insuranceexpiredate1;
		this.status1 = status1;
		this.vehiclenumber2 = vehiclenumber2;
		this.registrationtenantname2 = registrationtenantname2;
		this.licensenumber2 = licensenumber2;
		this.vehiclemodel2 = vehiclemodel2;
		this.registrationexpiredate2 = registrationexpiredate2;
		this.insuranceexpiredate2 = insuranceexpiredate2;
		this.status2 = status2;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getPropertycode() {
		return propertycode;
	}

	public void setPropertycode(int propertycode) {
		this.propertycode = propertycode;
	}

	public String getPropertyname() {
		return propertyname;
	}

	public void setPropertyname(String propertyname) {
		this.propertyname = propertyname;
	}

	public int getUnit() {
		return unit;
	}

	public void setUnit(int unit) {
		this.unit = unit;
	}

	public String getResident() {
		return resident;
	}

	public void setResident(String resident) {
		this.resident = resident;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getVehiclenumber1() {
		return vehiclenumber1;
	}

	public void setVehiclenumber1(String vehiclenumber1) {
		this.vehiclenumber1 = vehiclenumber1;
	}

	public String getRegistrationtenantname1() {
		return registrationtenantname1;
	}

	public void setRegistrationtenantname1(String registrationtenantname1) {
		this.registrationtenantname1 = registrationtenantname1;
	}

	public String getLicensenumber1() {
		return licensenumber1;
	}

	public void setLicensenumber1(String licensenumber1) {
		this.licensenumber1 = licensenumber1;
	}

	public String getVehiclemodel1() {
		return vehiclemodel1;
	}

	public void setVehiclemodel1(String vehiclemodel1) {
		this.vehiclemodel1 = vehiclemodel1;
	}

	public String getRegistrationexpiredate1() {
		return registrationexpiredate1;
	}

	public void setRegistrationexpiredate1(String registrationexpiredate1) {
		this.registrationexpiredate1 = registrationexpiredate1;
	}

	public String getInsuranceexpiredate1() {
		return insuranceexpiredate1;
	}

	public void setInsuranceexpiredate1(String insuranceexpiredate1) {
		this.insuranceexpiredate1 = insuranceexpiredate1;
	}

	public String getStatus1() {
		return status1;
	}

	public void setStatus1(String status1) {
		this.status1 = status1;
	}

	public String getVehiclenumber2() {
		return vehiclenumber2;
	}

	public void setVehiclenumber2(String vehiclenumber2) {
		this.vehiclenumber2 = vehiclenumber2;
	}

	public String getRegistrationtenantname2() {
		return registrationtenantname2;
	}

	public void setRegistrationtenantname2(String registrationtenantname2) {
		this.registrationtenantname2 = registrationtenantname2;
	}

	public String getLicensenumber2() {
		return licensenumber2;
	}

	public void setLicensenumber2(String licensenumber2) {
		this.licensenumber2 = licensenumber2;
	}

	public String getVehiclemodel2() {
		return vehiclemodel2;
	}

	public void setVehiclemodel2(String vehiclemodel2) {
		this.vehiclemodel2 = vehiclemodel2;
	}

	public String getRegistrationexpiredate2() {
		return registrationexpiredate2;
	}

	public void setRegistrationexpiredate2(String registrationexpiredate2) {
		this.registrationexpiredate2 = registrationexpiredate2;
	}

	public String getInsuranceexpiredate2() {
		return insuranceexpiredate2;
	}

	public void setInsuranceexpiredate2(String insuranceexpiredate2) {
		this.insuranceexpiredate2 = insuranceexpiredate2;
	}

	public String getStatus2() {
		return status2;
	}

	public void setStatus2(String status2) {
		this.status2 = status2;
	}
	
	

}
