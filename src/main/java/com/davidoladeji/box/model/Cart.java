package com.davidoladeji.box.model;

import javax.persistence.*;
import java.sql.Timestamp;

/**
 * Created by Daveola on 2/16/2015.
 */
@Entity
@Table(name = "cart")
public class Cart {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;


    @Basic
    @Column(name = "timestamp")
    private Timestamp timestamp;

    @Basic
    @Column(name = "totalprice")
    private String totalprice;

    @Basic
    @Column(name = "customer_id")
    private int customerId;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }


    public Timestamp getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(Timestamp timestamp) {
        this.timestamp = timestamp;
    }


    public String getTotalprice() {
        return totalprice;
    }

    public void setTotalprice(String totalprice) {
        this.totalprice = totalprice;
    }


    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Cart cart = (Cart) o;

        if (customerId != cart.customerId) return false;
        if (id != cart.id) return false;
        if (timestamp != null ? !timestamp.equals(cart.timestamp) : cart.timestamp != null) return false;
        if (totalprice != null ? !totalprice.equals(cart.totalprice) : cart.totalprice != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (timestamp != null ? timestamp.hashCode() : 0);
        result = 31 * result + (totalprice != null ? totalprice.hashCode() : 0);
        result = 31 * result + customerId;
        return result;
    }
}
