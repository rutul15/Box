package com.davidoladeji.box.controller.admin;

import com.davidoladeji.box.model.Product;
import com.davidoladeji.box.model.ProductStock;
import com.davidoladeji.box.repository.ProductRepository;
import com.davidoladeji.box.repository.ProductStockRepository;
import com.davidoladeji.box.repository.WarehouseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

/**
 * Created by Daveola on 3/18/2015.
 */

@Controller
@RequestMapping("/admin")
public class StockController {


    @Autowired
    ProductStockRepository productStockRepository;

    @Autowired
    ProductRepository productRepository;

    @Autowired
    WarehouseRepository warehouseRepository;


    @RequestMapping(value = "/addStock/{id}", method = RequestMethod.GET)
    public ModelAndView adminAddStockPage(ModelAndView model, @PathVariable("id") Long id, @ModelAttribute("productStock")ProductStock productStock) {
        model.addObject("title", "Stocks Page");

        Product product = productRepository.findOne(id);
        model.addObject("product", product);
        model.addObject("warehousesList", warehouseRepository.findAll());
        model.setViewName("admin/addStock");
        return model;
    }

    @RequestMapping(value = "/addStock", method = RequestMethod.POST)
    public ModelAndView adminAddStockPost(ModelAndView model,  @ModelAttribute("productStock") ProductStock productStock, BindingResult result, final RedirectAttributes redirectAttributes) {
        model.addObject("title", "Stocks Page");

        List<Product> productStockCheck = productStockRepository.findByProductIdAndWarehouse_Id(productStock.getProductId(), productStock.getWarehouse().getId());
        if(productStockCheck.size() >= 1){
            redirectAttributes.getFlashAttributes();
            model.setViewName("redirect:/admin/addStock{id}");
        }else if(productStockCheck.size() == 0) {
            productStockRepository.save(productStock);
            model.setViewName("redirect:/admin/products");
        }

        return model;
    }
}



