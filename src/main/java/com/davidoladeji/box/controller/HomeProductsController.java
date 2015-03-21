package com.davidoladeji.box.controller;

import com.davidoladeji.box.model.Product;
import com.davidoladeji.box.model.Warehouse;
import com.davidoladeji.box.repository.AccountRepository;
import com.davidoladeji.box.repository.ProductRepository;
import com.davidoladeji.box.repository.ProductStockRepository;
import com.davidoladeji.box.repository.WarehouseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by Daveola on 3/17/2015.
 */

@Controller
@RequestMapping("/products")
public class HomeProductsController {

    @Autowired
    AccountRepository accountRepository;

    @Autowired
    ProductRepository productRepository;

    @Autowired
    ProductStockRepository productStockRepository;

    @Autowired
    WarehouseRepository warehouseRepository;

    int totalstock = 0, stock = 0, count = 0;


    @RequestMapping(value = "/viewDetails/{id}", method = RequestMethod.GET)
    public
    @ResponseBody
    ModelAndView productView(ModelAndView model, @PathVariable("id") Long id, BindingResult result) {
        model.addObject("title", "orders Page");

        Product product = productRepository.findOne(id);
        model.addObject("product", product);
        List<Warehouse> warehouseList = warehouseRepository.findAll();

        product.setProductStock(productStockRepository.findByProductId(id));


        //Ensure The List of the Product Stock is not empty
        if (product.getProductStock().size() >= 1) {
            while (product.getProductStock().listIterator().hasNext() && !(count > product.getProductStock().size() - 1)) {
                //Get the stock as a number
                stock = product.getProductStock().get(count).getStock();
                totalstock += stock;
                count++;
            }
        }

        model.addObject("totalstock", totalstock);
        model.setViewName("product");
        return model;
    }
}
