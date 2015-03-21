package com.davidoladeji.box.model;

import javax.persistence.Column;
import javax.persistence.Id;
import java.io.Serializable;

/**
 * Created by Daveola on 2/16/2015.
 */
public class CartitemsPK implements Serializable {

    @Id
    @Column(name = "id")
    private Long id;

    @Id
    @Column(name = "cart_id")
    private int cartId;

    @Id
    @Column(name = "Products_id")
    private int productsId;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }


    public int getCartId() {
        return cartId;
    }

    public void setCartId(int cartId) {
        this.cartId = cartId;
    }


    public int getProductsId() {
        return productsId;
    }

    public void setProductsId(int productsId) {
        this.productsId = productsId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        CartitemsPK that = (CartitemsPK) o;

        if (cartId != that.cartId) return false;
        if (id != that.id) return false;
        if (productsId != that.productsId) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + cartId;
        result = 31 * result + productsId;
        return result;
    }
}
