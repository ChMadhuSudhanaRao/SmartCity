package com.smartcity.model;

import java.io.InputStream;
import java.sql.Blob;

public class Student {

	String collegeName;
	String collegeAdd;
	String collegeDescrp;
	InputStream photo;
	String base64Image;
	Blob image;
	
	public String getCollegeName() {
		return collegeName;
	}
	public void setCollegeName(String collegeName) {
		this.collegeName = collegeName;
	}
	public String getCollegeAdd() {
		return collegeAdd;
	}
	public void setCollegeAdd(String collegeAdd) {
		this.collegeAdd = collegeAdd;
	}
	public String getCollegeDescrp() {
		return collegeDescrp;
	}
	public void setCollegeDescrp(String collegeDescrp) {
		this.collegeDescrp = collegeDescrp;
	}
	public InputStream getPhoto() {
		return photo;
	}
	public void setPhoto(InputStream photo) {
		this.photo = photo;
	}
	public String getBase64Image() {
		return base64Image;
	}
	public void setBase64Image(String base64Image) {
		this.base64Image = base64Image;
	}
	public Blob getImage() {
		return image;
	}
	public void setImage(Blob image) {
		this.image = image;
	}
}
