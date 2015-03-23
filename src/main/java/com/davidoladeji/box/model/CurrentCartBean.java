package com.davidoladeji.box.model;

import java.util.ArrayList;
import java.util.List;

public class CurrentCartBean {
	
	private static double VAT = 17.5;
	
	private List<Orderitem> orderItems;

	public double getTotal() {
		
		double subTotal = 0.0;
		if(getOrderItems() != null){
			
			for (Orderitem item : getOrderItems()){
				subTotal = subTotal + item.getTotalItemPrice();
			}
		}
		
		double total =  subTotal + ( (subTotal * VAT) / 100);
		return total;

	}
	
	public double getVatTotal() {
		
		double subTotal = 0.0;
		if(getOrderItems() != null){
			
			for (Orderitem item : getOrderItems()){
				subTotal = subTotal + item.getTotalItemPrice();
			}
		}
		
		double total = ( (subTotal * VAT) / 100);
		return total;

	}


	public List<Orderitem> getOrderItems() {
		return orderItems;
	}

	public void addtOrderItems(Orderitem orderItem) {
		
		if(orderItems== null ){
			orderItems = new ArrayList<Orderitem>();
		}
		orderItems.add(orderItem);
	}


	public double getSubTotal() {
		double subTotal = 0.0;
		if(getOrderItems() != null){
			
			for (Orderitem item : getOrderItems()){
				subTotal = subTotal + item.getTotalItemPrice();
			}
		}
		return subTotal;
	}


	public CurrentCartBean() {
		super();
		
		this.orderItems = new ArrayList<Orderitem>();
	}

	public void resetOrderItemList() {
		this.orderItems = new ArrayList<Orderitem>();
	}



}
