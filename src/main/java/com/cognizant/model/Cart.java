package com.cognizant.model;

public class Cart {
	
	private int productid;
	private int quantity;
	public Cart(int productid, int quantity) {
		super();
		this.productid = productid;
		this.quantity = quantity;
	}
	public int getProductid() {
		return productid;
	}
	public void setProduct(int productid) {
		this.productid = productid;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

}
