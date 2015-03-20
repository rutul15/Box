package com.davidoladeji.box.model;

import javax.persistence.*;

/**
 * Created by Daveola on 2/16/2015.
 */
@Entity (name = "orderItem")
@IdClass(OrderitemPK.class)
@Table (name = "orderitem")
public class Orderitem {

    @Id
    @Column(name = "id")
    private Long id;

    @Basic
    @Column(name = "order_id")
    private Long orderId;

    @Basic
    @Column(name = "price")
    private Double price;

    @Basic
    @Column(name = "transfer_id")
    private int transferId;

    @Id
    @Column(name = "quantity")
    private int quantity;

    @Id
    @Column(name = "product_id")
    private Long productId;


    public Orderitem() {
    }

    public Orderitem(Long orderId, Double price, int quantity, Long productId) {
        this.orderId = orderId;
        this.price = price;
        this.transferId = transferId;
        this.quantity = quantity;
        this.productId = productId;
    }

    public Orderitem(Long productId) {
        this.productId = productId;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }


    public Long getOrderId() {
        return orderId;
    }

    public void setOrderId(Long orderId) {
        this.orderId = orderId;
    }


    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }


    public int getTransferId() {
        return transferId;
    }

    public void setTransferId(int transferId) {
        this.transferId = transferId;
    }


    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }


    public Long getProductId() {
        return productId;
    }

    public void setProductId(Long productId) {
        this.productId = productId;
    }



}
