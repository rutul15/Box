package com.davidoladeji.box.controller.admin;


import com.davidoladeji.box.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
@SessionAttributes({"countsList"})
public class AdminController {

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


    /**
     * Using one (Sessioned) ModelAndView Method to send counts to all views
     *
     * @return
     */
    @ModelAttribute("countsList")
    public List<Integer> countsList() {

        List<Integer> countsListModel = new ArrayList<Integer>();

        int numAccounts = accountRepository.findAll().size();
        countsListModel.add(0, numAccounts);

        int numOrders = orderRepository.findAll().size();
        countsListModel.add(1, numOrders);

        int numProducts = productRepository.findAll().size();
        countsListModel.add(2, numProducts);

        int numTransfers = transferRepository.findAll().size();
        countsListModel.add(3, numTransfers);

        int numWarehouses = warehouseRepository.findAll().size();
        countsListModel.add(4, numWarehouses);

        int numEmployees = employeeRepository.findAll().size();
        countsListModel.add(5, numEmployees);

        int numDrivers = driverRepository.findAll().size();
        countsListModel.add(6, numDrivers);

        int numCustomers = customerRepository.findAll().size();
        countsListModel.add(7, numCustomers);

        return countsListModel;
    }


    @RequestMapping(value = {"/admin", "/admin/dashboard"}, method = RequestMethod.GET)
    public ModelAndView adminDashboard(ModelAndView model) {
        model.addObject("title", "Dashboard!");
        model.setViewName("admin/dashboard");
        return model;
    }
}