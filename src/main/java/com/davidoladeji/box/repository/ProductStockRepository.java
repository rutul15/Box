package com.davidoladeji.box.repository;

import com.davidoladeji.box.model.Product;
import com.davidoladeji.box.model.ProductStock;
import org.hibernate.annotations.DynamicUpdate;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * Created by Daveola on 2/16/2015.
 */

@DynamicUpdate(value = true)
public interface ProductStockRepository extends JpaRepository<ProductStock, Long> {

        List<Product> findByProductIdAndWarehouse_Id(Long productId, Long warehouseId);
}
