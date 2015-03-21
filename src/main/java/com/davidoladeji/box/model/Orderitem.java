package com.davidoladeji.box.model;

import javax.persistence.*;
import java.util.List;

/**
 * Created by Daveola on 2/16/2015.
 */
@Entity(name = "orderItem")
@Table(name = "orderitem")
public class Orderitem {


    @OneToOne
    private Product product;
    @Id
    @Column(name = "id")
    private Long id;
    @Basic
    @Column(name = "order_id")
    private Long order_id;
    @Basic
    @Column(name = "price")
    private Double price;
    @Basic
    @Column(name = "transfer_id", insertable = false, updatable = false)
    private int transferId;
    @Column(name = "quantity")
    private int quantity;
    @Column(name = "product_id", insertable = false, updatable = false)
    private Long productId;

    @OneToOne
    private Transfer transfer;
    @OneToMany
    List<Orders> order;

    public Orderitem() {
    }

    public Orderitem(Long orderId, Double price, int quantity, Long productId) {
        this.order_id = orderId;
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


    public Long getOrder_id() {
        return order_id;
    }

    public void setOrder_id(Long orderId) {
        this.order_id = orderId;
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


    public Transfer getTransfer() {
        return transfer;
    }

    public void setTransfer(Transfer transfer) {
        this.transfer = transfer;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
}
