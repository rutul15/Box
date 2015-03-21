package com.davidoladeji.box.model;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

/**
 * Created by Daveola on 2/16/2015.
 */
@Entity(name = "orders")
@Table(name = "orders")
public class Orders {

    @OneToMany
    List<Orderitem> orderItems;
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

}
