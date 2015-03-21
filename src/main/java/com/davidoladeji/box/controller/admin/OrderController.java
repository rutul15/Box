package com.davidoladeji.box.controller.admin;

import com.davidoladeji.box.model.Orders;
import com.davidoladeji.box.repository.AccountRepository;
import com.davidoladeji.box.repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by Daveola on 3/17/2015.
 */

@Controller
@RequestMapping("/admin")
public class OrderController {

    @Autowired
    AccountRepository accountRepository;

    @Autowired
    OrderRepository orderRespository;

    @RequestMapping(value = "/orders", method = RequestMethod.GET)
    public ModelAndView adminProductsPage(ModelAndView model) {
        model.addObject("title", "orders Page");

        List<Orders> productList = orderRespository.findAll();
        model.addObject("productsList", productList);

        model.setViewName("orders");
        return model;
    }

    @RequestMapping(value = "/addOrder", method = RequestMethod.GET)
    public ModelAndView adminOrderPage(ModelAndView model) {
        model.addObject("title", "orders Page");

        List<Orders> productList = orderRespository.findAll();
        model.addObject("productsList", productList);

        model.setViewName("orders");
        return model;
    }

    @RequestMapping(value = "/addOrder", method = RequestMethod.POST)
    public ModelAndView adminOrderPost(ModelAndView model) {
        model.addObject("title", "orders Page");

        List<Orders> productList = orderRespository.findAll();
        model.addObject("productsList", productList);

        model.setViewName("orders");
        return model;
    }
}
