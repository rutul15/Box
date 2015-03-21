package com.davidoladeji.box.util;

import com.davidoladeji.box.model.Product;
import com.davidoladeji.box.repository.WarehouseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * Created by Daveola on 3/21/2015.
 */

@Component
public class ProductManger {

    @Autowired
    WarehouseRepository warehouseRepository;

    int totalstock = 0, stock = 0, count = 0;

    Product product;



    public int getProductTotalStock(Product product) {
        //Ensure The List of the Product Stock is not empty
        if (product.getProductStock().size() >= 1) {
            while (product.getProductStock().listIterator().hasNext() && !(count > product.getProductStock().size() - 1)) {
                //Get the stock as a number
                stock = product.getProductStock().get(count).getStock();
                totalstock += stock;
                count++;
            }
        }
        return  totalstock;
    }
}
