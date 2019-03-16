package com.centraprise.hrmodule.model;

public class EmployeeListDTO {

	private int id;
	private String name;
	private int employeeId;
	private String email;
	private String phone;
	private String joiningDate;
	private String salory;

	public EmployeeListDTO(int id, String name, int employeeId, String email, String phone, String joiningDate,
			String salory) {
		this.id = id;
		this.name = name;
		this.employeeId = employeeId;
		this.email = email;
		this.phone = phone;
		this.joiningDate = joiningDate;
		this.salory = salory;
	}
	
	

	public EmployeeListDTO() {
		super();
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getJoiningDate() {
		return joiningDate;
	}

	public void setJoiningDate(String joiningDate) {
		this.joiningDate = joiningDate;
	}

	public String getSalory() {
		return salory;
	}

	public void setSalory(String salory) {
		this.salory = salory;
	}

	@Override
	public String toString() {
		return "EmployeeListDTO [id=" + id + ", name=" + name + ", employeeId=" + employeeId + ", email=" + email
				+ ", phone=" + phone + ", joiningDate=" + joiningDate + ", salory=" + salory + "]";
	}

}
