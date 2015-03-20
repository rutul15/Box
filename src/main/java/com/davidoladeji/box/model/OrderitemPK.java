package com.davidoladeji.box.model;

import javax.persistence.Column;
import javax.persistence.Id;
import java.io.Serializable;

/**
 * Created by Daveola on 2/16/2015.
 */
public class OrderitemPK implements Serializable {

    @Id
    @Column(name = "id")
    private Long id;


    @Id
    @Column(name = "product_id")
    private int productId;



    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }



    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        OrderitemPK that = (OrderitemPK) o;

        if (id != that.id) return false;
        if (productId != that.productId) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + productId;
        return result;
    }
}
