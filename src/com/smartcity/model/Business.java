package com.smartcity.model;

import java.io.InputStream;
import java.sql.Blob;

public class Business {
String heading;
String description;
String link;
InputStream photo;
Blob image;
String base64Image;
public String getHeading() {
	return heading;
}
public void setHeading(String heading) {
	this.heading = heading;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public String getLink() {
	return link;
}
public void setLink(String link) {
	this.link = link;
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
