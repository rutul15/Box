package com.davidoladeji.box.model;

import javax.persistence.*;

import java.sql.Timestamp;
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
    @ManyToOne
    Account account;
    @OneToOne
    Warehouse warehouse;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;
    @Column(name = "order_date")
    private Timestamp orderDate;
    
    @Column(name = "order_status_id")
    private int orderStatus;
    @Column(name = "price")
    private Double price;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }


    public Timestamp getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Timestamp orderDate) {
        this.orderDate = orderDate;
    }


   

    public int getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(int orderStatus) {
        this.orderStatus = orderStatus;
    }


    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }


    public Warehouse getWarehouse() {
        return warehouse;
    }

    public void setWarehouse(Warehouse warehouse) {
        this.warehouse = warehouse;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public List<Orderitem> getOrderItems() {
        return orderItems;
    }

    public void setOrderItems(List<Orderitem> orderItems) {
        this.orderItems = orderItems;
    }
}
