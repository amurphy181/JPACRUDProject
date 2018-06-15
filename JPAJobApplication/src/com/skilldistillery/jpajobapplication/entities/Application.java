package com.skilldistillery.jpajobapplication.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Application {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String company;
	
	@Column(name="job_title")
	private String jobTitle;
	
	private String city;
	private String state;
	private int salary;
	
	@Column(name="date_applied")
	private String dateApplied;
	
	@Column(name="app_status")
	@Enumerated(EnumType.STRING)
	private AppStatus appStatus;
	
	@Column(name="company_contact")
	private String companyContact;
	
	@Column(name="posting_link")
	private String postingLink;
	private String comments;
	
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getJobTitle() {
		return jobTitle;
	}
	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public String getDateApplied() {
		return dateApplied;
	}
	public void setDateApplied(String dateApplied) {
		this.dateApplied = dateApplied;
	}
	
	public String getCompanyContact() {
		return companyContact;
	}
	public void setCompanyContact(String companyContact) {
		this.companyContact = companyContact;
	}
	public String getPostingLink() {
		return postingLink;
	}
	public void setPostingLink(String postingLink) {
		this.postingLink = postingLink;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public int getId() {
		return id;
	}
	public AppStatus getAppStatus() {
		return appStatus;
	}
	public void setAppStatus(AppStatus appStatus) {
		this.appStatus = appStatus;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Application [id=");
		builder.append(id);
		builder.append(", company=");
		builder.append(company);
		builder.append(", jobTitle=");
		builder.append(jobTitle);
		builder.append(", city=");
		builder.append(city);
		builder.append(", state=");
		builder.append(state);
		builder.append(", salary=");
		builder.append(salary);
		builder.append(", dateApplied=");
		builder.append(dateApplied);
		builder.append(", appStatus=");
		builder.append(appStatus);
		builder.append(", companyContact=");
		builder.append(companyContact);
		builder.append(", postingLink=");
		builder.append(postingLink);
		builder.append(", comments=");
		builder.append(comments);
		builder.append("]");
		return builder.toString();
	}
	
	
}
