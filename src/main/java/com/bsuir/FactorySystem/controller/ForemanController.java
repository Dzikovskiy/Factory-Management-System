package com.bsuir.FactorySystem.controller;

import com.bsuir.FactorySystem.Entities.ProductOrder;
import com.bsuir.FactorySystem.Repository.ProductOrderRepository;
import com.bsuir.FactorySystem.Repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ForemanController {


    @Autowired
    private ProductRepository productRepository;
    @Autowired
    private ProductOrderRepository productOrderRepository;

    @GetMapping("/foremanOrdersMovement")
    public String dispatcherOrders(Model model) {
        Iterable<ProductOrder> orders = productOrderRepository.findAll();
        model.addAttribute("orders", orders);

        return "foremanOrdersMovement";
    }


}
