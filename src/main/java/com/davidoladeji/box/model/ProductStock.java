package com.davidoladeji.box.model;

import javax.persistence.*;

/**
 * Created by Daveola on 2/16/2015.
 */
@Entity
@Table(name = "product_stock", schema = "", catalog = "box")
public class ProductStock {

    @OneToOne
    Warehouse warehouse;
    @Column(name = "product_id")
    Long productId;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;
    @Column(name = "stock")
    private int stock;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int productStock) {
        this.stock = productStock;
    }

    public Long getProductId() {
        return productId;
    }

    public void setProductId(Long productId) {
        this.productId = productId;
    }

    public Warehouse getWarehouse() {
        return warehouse;
    }

    public void setWarehouse(Warehouse warehouse) {
        this.warehouse = warehouse;
    }
}
