package com.cruds.entity;

import java.util.ArrayList;
import java.util.List;

public class Cart {

	private List<Product> cart = new ArrayList<>();
	
	public Cart() {
		cart.add(new Product("", "", 0));
	}
	
	public Cart(List<Product> cart) {
		super();
		this.cart = cart;
	}

	public List<Product> getCart() {
		return cart;
	}

	public void setCart(List<Product> cart) {
		this.cart = cart;
	}	
	
	public void add(Product p)
	{
		cart.add(new Product(p.getPid(), p.getPrice()));
	}

}
