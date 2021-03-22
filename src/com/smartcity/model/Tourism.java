package com.smartcity.model;

import java.io.InputStream;
import java.sql.Blob;

public class Tourism {
	
	String pName;
	String location;
	String descrp;
	InputStream photo;
	String base64Image;
	Blob image;
	
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
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
