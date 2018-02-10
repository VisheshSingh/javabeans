package model;

import java.io.Serializable;

public class EmployeeBean implements Serializable {
	private String firstName;
	private String lastName;
	private int startDate;
	private double hourlyRate;

	public EmployeeBean() {
	}

	public EmployeeBean(String firstName, String lastName, int startDate, double hourlyRate) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.startDate = startDate;
		this.hourlyRate = hourlyRate;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public int getStartDate() {
		return startDate;
	}

	public void setStartDate(int startDate) {
		this.startDate = startDate;
	}

	public double getHourlyRate() {
		return hourlyRate;
	}

	public void setHourlyRate(double hourlyRate) {
		this.hourlyRate = hourlyRate;
	}

}
