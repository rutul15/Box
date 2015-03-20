package com.davidoladeji.box.controller;


import com.davidoladeji.box.model.Account;
import com.davidoladeji.box.model.Product;
import com.davidoladeji.box.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.List;

/**
 * Contains navigation control methods to pages on the frontend of the application
 */



@Controller
@RequestMapping("/")
@SessionAttributes({"countsList"})
public class HomeController {

    @Autowired
    AccountRepository accountRepository;

    @Autowired
    OrderRepository orderRepository;

    @Autowired
    ProductRepository productRepository;

    @Autowired
    TransferRepository transferRepository;

    @Autowired
    WarehouseRepository warehouseRepository;

    @Autowired
    EmployeeRepository employeeRepository;


    @Autowired
    DriverRepository driverRepository;

    @Autowired
    CustomerRepository customerRepository;


    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView homePage(ModelAndView model) {
        model.addObject("title", "Home page!");
        model.addObject("breadcrumb", "*");


        List<Product> featuredProductsList =  productRepository.findByFeatured(true);
        model.addObject("featuredProductsList", featuredProductsList);


        model.setViewName("index");
        return model;
    }


    @RequestMapping(value = "login", method = RequestMethod.GET)
    public ModelAndView loginPage(ModelAndView model) {
        model.addObject("title", "Login");
        model.addObject("breadcrumb", "Login");

        model.setViewName("login");
        return model;
    }

    @RequestMapping(value = "logout", method = RequestMethod.GET)
    public ModelAndView logoutPage(ModelAndView model) {
        model.addObject("title", "Logout");
        model.addObject("breadcrumb", "Logged out");

        model.setViewName("logout");
        return model;
    }

    @RequestMapping(value = "register", method = RequestMethod.GET)
      public ModelAndView registerPage(ModelAndView model, @ModelAttribute("account")Account account) {
        model.addObject("title", "Register");
        model.addObject("breadcrumb", "Register");

        model.setViewName("register");
        return model;
    }

    @RequestMapping(value = "register", method = RequestMethod.POST)
    public ModelAndView registerPost(ModelAndView model, @Valid @ModelAttribute("account")Account account, BindingResult result) {
        model.addObject("title", "Register");
        model.addObject("breadcrumb", "Register");

        if (result.hasErrors()) {
            model.setViewName("register");
            return model;

        }else{

            accountRepository.save(account);
            model.setViewName("index");
            return model;
        }


    }

    @RequestMapping(value = "profile", method = RequestMethod.GET)
    public ModelAndView accountProfilePage(ModelAndView model) {
        model.addObject("title", "Profile");
        model.addObject("breadcrumb", "Profile");

        model.setViewName("profile");
        return model;
    }


    @RequestMapping(value = "track", method = RequestMethod.GET)
    public ModelAndView trackingItemPage(ModelAndView model) {
        model.addObject("title", "Track");
        model.addObject("breadcrumb", "Track");

        model.setViewName("tracking");
        return model;
    }

    @RequestMapping(value = "order", method = RequestMethod.GET)
    public ModelAndView ordersPage(ModelAndView model) {
        model.addObject("title", "Order");
        model.addObject("breadcrumb", "Order");

        model.setViewName("orders");
        return model;
    }

    @RequestMapping(value = "cart", method = RequestMethod.GET)
    public ModelAndView cartPage(ModelAndView model) {
        model.addObject("title", "Cart");
        model.addObject("breadcrumb", "Cart");

        model.setViewName("cart");
        return model;
    }

}