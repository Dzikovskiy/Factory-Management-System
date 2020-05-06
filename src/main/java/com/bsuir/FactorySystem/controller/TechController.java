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
public class TechController {

    @Autowired
    private ComponentRepository componentRepository;

    @Autowired
    private OperationRepository operationRepository;

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private WorkshopRepository workshopRepository;

    @GetMapping("/tech")
    public String mainTech(Model model) {
        Iterable<Component> components = componentRepository.findAll();
        Iterable<Operation> operations = operationRepository.findAll();
        Iterable<Product> products = productRepository.findAll();
        Iterable<Workshop> workshops = workshopRepository.findAll();

        model.addAttribute("components", components);
        model.addAttribute("operations", operations);
        model.addAttribute("products", products);
        model.addAttribute("workshops", workshops);

        return "tech";
    }

}
