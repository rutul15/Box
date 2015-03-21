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
@RequestMapping("/")
public class PurchaseController {

    @Autowired
    AccountRepository accountRepository;

    @Autowired
    ProductRepository productRepository;

/*
    @RequestMapping(value = "cart/add/", method = RequestMethod.POST, produces = "application/json")
    public @ResponseBody ModelAndView addToCart(ModelAndView model, @ModelAttribute("cart")Cart cart, BindingResult result, @RequestParam("productId")Long productId, @RequestParam("quantity")int quantity,
                                  HttpSession session) {
        model.addObject("title", "orders Page");

        if(session.getAttribute("cart") == null){

        }else {
            List<Orderitem> currentCart  = new ArrayList<Orderitem>();
            Orders order = new Orders();
            Long orderId = order.getId();
            currentCart.add(new Orderitem(orderId, productRepository.findOne(productId).getSalesPrice(),  quantity,  productRepository.findOne(productId).getId()));
            session.setAttribute("cart",currentCart);
        }

        model.setViewName("orders");
        return model;
    }*/
}
