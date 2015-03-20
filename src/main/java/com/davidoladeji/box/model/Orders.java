package com.davidoladeji.box.model;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by Daveola on 2/16/2015.
 */
@Entity(name = "orders")
@Table(name = "orders")
public class Orders {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;

    
    @Column(name = "order_date")
    private Date orderDate;

    
    @Column(name = "order_time")
    private Date orderTime;

    
    @Column(name = "order_status")
    private int orderStatus;

    
    @Column(name = "customer_id")
    private int customerId;

    
    @Column(name = "price")
    private Double price;

    
    @Column(name = "choice_warehouse")
    private String choiceWarehouse;

    
    @Column(name = "payment_option")
    private String paymentOption;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }


    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }


    public Date getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(Date orderTime) {
        this.orderTime = orderTime;
    }

    public int getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(int orderStatus) {
        this.orderStatus = orderStatus;
    }


    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }


    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }


    public String getChoiceWarehouse() {
        return choiceWarehouse;
    }

    public void setChoiceWarehouse(String choiceWarehouse) {
        this.choiceWarehouse = choiceWarehouse;
    }


    public String getPaymentOption() {
        return paymentOption;
    }

    public void setPaymentOption(String paymentOption) {
        this.paymentOption = paymentOption;
    }



    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Orders orders = (Orders) o;

        if (customerId != orders.customerId) return false;
        if (orderStatus != orders.orderStatus) return false;
        if (choiceWarehouse != null ? !choiceWarehouse.equals(orders.choiceWarehouse) : orders.choiceWarehouse != null)
            return false;
        if (id != null ? !id.equals(orders.id) : orders.id != null) return false;
        if (orderDate != null ? !orderDate.equals(orders.orderDate) : orders.orderDate != null) return false;
        if (orderTime != null ? !orderTime.equals(orders.orderTime) : orders.orderTime != null) return false;
        if (paymentOption != null ? !paymentOption.equals(orders.paymentOption) : orders.paymentOption != null)
            return false;
        if (price != null ? !price.equals(orders.price) : orders.price != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (orderDate != null ? orderDate.hashCode() : 0);
        result = 31 * result + (orderTime != null ? orderTime.hashCode() : 0);
        result = 31 * result + orderStatus;
        result = 31 * result + customerId;
        result = 31 * result + (price != null ? price.hashCode() : 0);
        result = 31 * result + (choiceWarehouse != null ? choiceWarehouse.hashCode() : 0);
        result = 31 * result + (paymentOption != null ? paymentOption.hashCode() : 0);
        return result;
    }
}
