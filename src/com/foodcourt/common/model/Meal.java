package com.foodcourt.common.model;

public class Meal {
	

	private String name;
	private int id;
	private int price;
	private long eta;

	
	public Meal() {
		
	}
	
	public Meal(int id, int price, String name, long eta) {
		this.id = id;
		this.price = price;
		this.name = name;
		this.eta= eta;
	}
	
	public Meal(Meal meal) {
		this.id = meal.id;
		this.price = meal.price;
		this.name = meal.name;
		this.eta = meal.eta;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public long getEta() {
		return eta;
	}

	public void setEta(long eta) {
		this.eta = eta;
	}

}
