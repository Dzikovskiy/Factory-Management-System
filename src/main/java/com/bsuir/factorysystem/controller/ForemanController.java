package com.bsuir.factorysystem.controller;

import com.bsuir.factorysystem.entity.ProductOrder;
import com.bsuir.factorysystem.repository.ProductOrderRepository;
import com.bsuir.factorysystem.repository.ProductRepository;
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
