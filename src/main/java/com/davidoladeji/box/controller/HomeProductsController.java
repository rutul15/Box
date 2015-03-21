package com.davidoladeji.box.controller;

import com.davidoladeji.box.model.Cart;
import com.davidoladeji.box.model.Orderitem;
import com.davidoladeji.box.model.Orders;
import com.davidoladeji.box.repository.AccountRepository;
import com.davidoladeji.box.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
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


    @RequestMapping(value = "/viewDetails/{id}", method = RequestMethod.GET)
    public @ResponseBody ModelAndView productView(ModelAndView model) {
        model.addObject("title", "orders Page");



        model.setViewName("product");
        return model;
    }
}
