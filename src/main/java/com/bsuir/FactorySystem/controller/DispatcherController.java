package com.bsuir.FactorySystem.controller;

import com.bsuir.FactorySystem.Entities.Component;
import com.bsuir.FactorySystem.Entities.Operation;
import com.bsuir.FactorySystem.Entities.Product;
import com.bsuir.FactorySystem.Entities.Workshop;
import com.bsuir.FactorySystem.Repository.ComponentRepository;
import com.bsuir.FactorySystem.Repository.OperationRepository;
import com.bsuir.FactorySystem.Repository.ProductRepository;
import com.bsuir.FactorySystem.Repository.WorkshopRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DispatcherController {


    @Autowired
    private ProductRepository productRepository;

    @GetMapping("/dispatcherOrders")
    public String dispatcherOrders(Model model) {
        Iterable<Product> products = productRepository.findAll();
        model.addAttribute("products", products);
        
        return "dispatcherOrders";
    }

}
