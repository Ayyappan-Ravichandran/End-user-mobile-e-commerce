package com.cognizant.model;

public class Orders {

	private Mobiles mobiles;
	private String custid;
	private String username;
	private String email;
	private String address;
	private String city;
	private String state;
	private String pincode;
	private String status;
	private int quantity;
	private int orderId;
	
	
	public Mobiles getMobiles() {
		return mobiles;
	}
	public void setMobiles(Mobiles mobiles) {
		this.mobiles = mobiles;
	}
	public String getCustid() {
		return custid;
	}
	public void setCustid(String custid) {
		this.custid = custid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
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
	public String getPincode() {
		return pincode;
	}
	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	
	
	
	public Orders(Mobiles mobiles, int quantity, int orderId, String custid, String status) {
		super();
		this.mobiles = mobiles;
		this.quantity = quantity;
		this.orderId = orderId;
		this.custid = custid;
		this.status = status;
	}
	
	
	public Orders(Mobiles mobiles, int quantity) {
		super();
		this.mobiles = mobiles;
		this.quantity = quantity;
	}
	
	
	public Orders(Mobiles mobiles, int quantity, int orderId,String cname, String username, String email,
			String address, String city, String state, String pincode, String status) {
		super();
		this.mobiles = mobiles;
		this.quantity = quantity;
		this.orderId = orderId;
		this.custid = cname;
		this.username = username;
		this.email = email;
		this.address = address;
		this.city = city;
		this.state = state;
		this.pincode = pincode;
		this.status = status;
	}
	
	
	public Orders(Mobiles mobiles) {
		super();
		this.mobiles = mobiles;
	}

}
