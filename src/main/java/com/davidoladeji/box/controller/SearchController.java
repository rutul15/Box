package com.davidoladeji.box.controller;

import com.davidoladeji.box.model.*;
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
public class SearchController {


    @Autowired
    ProductRepository productRepository;




    @RequestMapping(value = "search", method = RequestMethod.GET)
    public @ResponseBody ModelAndView searchProducts( @ModelAttribute("productsearch") Search search, BindingResult result, @RequestParam("searchterm") String searchterm) {

        ModelAndView model = new ModelAndView("search");
        model.addObject("search", search);


        List<Product> searchProductsList = productRepository.findByName(searchterm);

        model.addObject("searchProductsList", searchProductsList);

        model.setViewName("searchresult");
        return model;
    }



    @RequestMapping(value = "searchresult", method = RequestMethod.GET)
    public @ResponseBody ModelAndView searchResult(ModelAndView model) {




        model.setViewName("searchresult");
        return model;
    }
}
