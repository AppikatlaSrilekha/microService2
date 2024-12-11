package com.klef.jfsd.dieticianapp.models;

import java.sql.Blob;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;
import jakarta.persistence.Table;

@Entity
@Table(name="duser_table")
public class Dietician {

	@Id
	private String email;
	@Column(nullable=false,unique = true,length = 10)
	private String license;
	@Column(nullable=false)
	private String name;
	@Column(nullable=false)
	private String pwd;
	@Column(name="degree")
	private String qualification;
	@Column(nullable=false)
	private String contact;
	private int age;
	private String gender;
@Lob
	private byte[] pic;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLicense() {
		return license;
	}
	public void setLicense(String license) {
		this.license = license;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public byte[] getPic() {
		return pic;
	}
	public void setPic(byte[] bs) {
		this.pic = bs;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
}