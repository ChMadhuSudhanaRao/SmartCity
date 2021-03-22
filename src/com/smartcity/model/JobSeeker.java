package com.smartcity.model;

import java.io.InputStream;
import java.sql.Blob;

public class JobSeeker {
String jobTitle;
String companyName;
String link;
String descrp;
InputStream photo;
Blob image;
String base64Image;

public String getCompanyName() {
	return companyName;
}
public void setCompanyName(String companyName) {
	this.companyName = companyName;
}
public String getJobTitle() {
	return jobTitle;
}
public void setJobTitle(String jobTitle) {
	this.jobTitle = jobTitle;
}

public String getLink() {
	return link;
}
public void setLink(String link) {
	this.link = link;
}
public String getDescrp() {
	return descrp;
}
public void setDescrp(String descrp) {
	this.descrp = descrp;
}
public InputStream getPhoto() {
	return photo;
}
public void setPhoto(InputStream photo) {
	this.photo = photo;
}
public Blob getImage() {
	return image;
}
public void setImage(Blob image) {
	this.image = image;
}
public String getBase64Image() {
	return base64Image;
}
public void setBase64Image(String base64Image) {
	this.base64Image = base64Image;
}
}
