package com.pojo;

public class Menu {
	private int id, price;
	public Menu(int id, int price, String name, String type, String available) {
		super();
		this.id = id;
		this.price = price;
		this.name = name;
		this.type = type;
		this.available = available;
	}
	@Override
	public String toString() {
		return "Menu [id=" + id + ", price=" + price + ", name=" + name + ", type=" + type + ", available=" + available
				+ "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getAvailable() {
		return available;
	}
	public void setAvailable(String available) {
		this.available = available;
	}
	private String name, type, available;
	
}
