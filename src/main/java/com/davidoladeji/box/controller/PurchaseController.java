package com.davidoladeji.box.controller;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.davidoladeji.box.model.Cart;
import com.davidoladeji.box.model.CurrentCartBean;
import com.davidoladeji.box.model.Orderitem;
import com.davidoladeji.box.model.Orders;
import com.davidoladeji.box.model.Product;
import com.davidoladeji.box.model.ProductStock;
import com.davidoladeji.box.model.Search;
import com.davidoladeji.box.model.Transfer;
import com.davidoladeji.box.repository.AccountRepository;
import com.davidoladeji.box.repository.OrderRepository;
import com.davidoladeji.box.repository.OrderitemRepository;
import com.davidoladeji.box.repository.ProductRepository;
import com.davidoladeji.box.repository.ProductStockRepository;
import com.davidoladeji.box.repository.TransferRepository;
import com.davidoladeji.box.repository.WarehouseRepository;

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
    
    @Autowired
    TransferRepository transferRepository;
    
    @Autowired
    WarehouseRepository warehouseRepository;
    
    @Autowired
    ProductStockRepository productStockRepository;
    
    @Autowired
    OrderRepository orderRepository;
    
    @Autowired
    OrderitemRepository orderIemRepository; 


  
	@RequestMapping(value = "cart/add/", method = RequestMethod.POST)
    public ModelAndView addToCart(ModelAndView model, @ModelAttribute("cart")Cart cart, BindingResult result, 
    		@RequestParam("productId")Long productId, 
    		@RequestParam("quantity")int quantity,
                                  HttpSession session,
                                  @ModelAttribute("productsearch") Search search) {
        model.addObject("title", "orders Page");
        CurrentCartBean cartBean = (CurrentCartBean) session.getAttribute("cart");
        if(cartBean == null || cartBean.getOrderItems() == null || cartBean.getOrderItems().isEmpty()){
        	cartBean = new CurrentCartBean();
        	Orders order = new Orders();
            Long orderId = order.getId();
            Product product = productRepository.findOne(productId);
            Orderitem item = new Orderitem(orderId, productRepository.findOne(productId).getSalesPrice(),  quantity,  product.getId());
            item.setProduct(product);
            cartBean.addtOrderItems(item);
            session.setAttribute("cart",cartBean);
        }else {
            
            Orders order = new Orders();
            Long orderId = order.getId();
            Product product = productRepository.findOne(productId);
            Orderitem item = new Orderitem(orderId, productRepository.findOne(productId).getSalesPrice(),  quantity,  product.getId());
            item.setProduct(product);
            cartBean.addtOrderItems(item);
            session.setAttribute("cart",cartBean);
        }
       // print(cartBean);
       model.setViewName("orders");
        return model;
    }
	@RequestMapping(value = "/cart/update", method = RequestMethod.POST)
    public ModelAndView updateCart(ModelAndView model,  @ModelAttribute("cart")Cart cart, BindingResult result,  
    		@RequestParam("productId")Long productId, 
    		@RequestParam("quantity")int quantity,
    		@RequestParam("action") String action,
                                  HttpSession session,
                                  @ModelAttribute("productsearch") Search search) {
        model.addObject("title", "orders Page");
        CurrentCartBean cartBean = (CurrentCartBean) session.getAttribute("cart");
        
        if("update".equals(action)){
        	
        	for (Orderitem item : cartBean.getOrderItems()){
        		if (item.getProductId() == productId){
        			item.setQuantity(quantity);
        		}
        	}
        	
        }else{
        	List<Orderitem> oldItem = cartBean.getOrderItems();
        	cartBean.resetOrderItemList();
        	for (Orderitem item : oldItem){
        		if (item.getProductId() != productId){
        			cartBean.addtOrderItems(item);
        		}
        	}
        	
        }
       
        model.setViewName("cart");
        return model;
    }
	
	@RequestMapping(value = "/checkout", method = RequestMethod.GET)
    public ModelAndView checkOut(ModelAndView model, HttpSession session
    		, @ModelAttribute("productsearch") Search search/*, 
    		@RequestParam(value = "warehouseId") Long warehouseId*/){
		
		// get the cart item information
		CurrentCartBean cartBean = (CurrentCartBean) session.getAttribute("cart");
		if(cartBean == null){
			model.setViewName("index");
		}else{
			
			// 1. get the transfer object
			Long warehouseId = new Long(1);
			//Warehouse warehouse = warehouseRepository.getOne(warehouseId);
			
			Orders order = new Orders();
			
			order.setOrderDate(new Timestamp(new Date().getTime()));
			order.setPrice(cartBean.getTotal());
			order.setWarehouse(warehouseRepository.findOne(warehouseId));
			order.setOrderStatus(1);
			
			orderRepository.saveAndFlush(order);
			
			List<Transfer> transferList = transferRepository.findAll();
			for (Orderitem item : cartBean.getOrderItems()){
				List<ProductStock> productStock = productStockRepository.findByProductIdAndWarehouse_Id(item.getProductId(),
						warehouseId);
				double qty = item.getQuantity();
				for (ProductStock ps : productStock){
					if( qty >= ps.getStock()){
						// we have enough stock, we are good.
					}else{
						// not enough stock,
						
						//item.setTransferId(3);
						// TODO add transfer object
					}
				}
				item.setOrder_id(order.getId());
				item.setTransfer(transferList.get(0));
				
				
			}
			orderIemRepository.save(cartBean.getOrderItems());
			
			order.setOrderItems(cartBean.getOrderItems());
			orderRepository.saveAndFlush(order);
			
			//order.setAccount(accountRepository.findByUsername(username));
			
			// 3. we are going to create Orders object. we are going to get Account, Wharehouse and  List<Orderitem> orderItems; 
			// coming from cartBean
			
			
			// 4. save Orders
			
			
		
			model.setViewName("successPage");
		}
		session.removeAttribute("cart");
		
		return model;
	}
    
    /*private void print(CurrentCartBean cartBean){
    	
    	
    	System.out.println("# of items: "+ cartBean.getOrderItems().size());
    	
    	for (Orderitem item : cartBean.getOrderItems()){
    		System.out.println("Orer item: "+ item.getProduct().getName());
    		System.out.println("Orer qty: "+ item.getQuantity());
    		System.out.println("Orer price: "+ item.getPrice());
    	}
    	
    	System.out.println("# of items: "+ cartBean.getSubTotal() + " "+ cartBean.getTotal());
    }*/
}
