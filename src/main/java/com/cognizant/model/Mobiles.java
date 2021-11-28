package com.cognizant.model;

public class Mobiles {
	
	private int id;
	private String Company;
	private String Brand;
	private String RAM;
	private String ROM;
	private String OS;
	private String Photo;
	private String Photo1;
	private String Photo2;
	private long Price;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCompany() {
		return Company;
	}
	public void setCompany(String company) {
		Company = company;
	}
	public String getBrand() {
		return Brand;
	}
	public void setBrand(String brand) {
		Brand = brand;
	}
	public String getRAM() {
		return RAM;
	}
	public void setRAM(String rAM) {
		RAM = rAM;
	}
	public String getROM() {
		return ROM;
	}
	public void setROM(String rOM) {
		ROM = rOM;
	}
	public String getOS() {
		return OS;
	}
	public void setOS(String oS) {
		OS = oS;
	}
	public String getPhoto() {
		return Photo;
	}
	public void setPhoto(String photo) {
		Photo = photo;
	}
	public String getPhoto1() {
		return Photo1;
	}
	public void setPhoto1(String photo1) {
		Photo1 = photo1;
	}
	public String getPhoto2() {
		return Photo2;
	}
	public void setPhoto2(String photo2) {
		Photo2 = photo2;
	}
	public long getPrice() {
		return Price;
	}
	public void setPrice(long price) {
		Price = price;
	}
	public Mobiles() {
		
	}
	public Mobiles(int id, String company, String brand, String photo, String photo1, String photo2,
			String rAM, String rOM, String oS, long price) {
		
		this.id = id;
		this.Company=company;
		this.Brand = brand;
		this.RAM = rAM;
		this.ROM = rOM;
		this.OS = oS;
		this.Photo = photo;
		this.Photo1 = photo1;
		this.Photo2= photo2;
		this.Price = price;
	
	}

}
