package com.bistroblanc.BistroBlanc;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;

@Entity
public class Orders {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int orderId;
	private float total;
	private String tname;
	private String cid;
	private String address;
	@ManyToOne
	private users id;
	
	
	public Orders() {
		super();
	}


	public Orders(float total, String tname, String cid, String address, users id) {
		super();
		this.total = total;
		this.tname = tname;
		this.cid = cid;
		this.address = address;
		this.id = id;
	}


	public int getOrderId() {
		return orderId;
	}


	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}


	public float getTotal() {
		return total;
	}


	public void setTotal(float total) {
		this.total = total;
	}


	public String getTname() {
		return tname;
	}


	public void setTname(String tname) {
		this.tname = tname;
	}


	public String getCid() {
		return cid;
	}


	public void setCid(String cid) {
		this.cid = cid;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public users getId() {
		return id;
	}


	public void setId(users id) {
		this.id = id;
	}

		
	
	
}
