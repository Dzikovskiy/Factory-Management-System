package com.bsuir.factorysystem.controller;

import com.bsuir.factorysystem.entity.Component;
import com.bsuir.factorysystem.entity.Operation;
import com.bsuir.factorysystem.entity.Product;
import com.bsuir.factorysystem.entity.Workshop;
import com.bsuir.factorysystem.repository.ComponentRepository;
import com.bsuir.factorysystem.repository.OperationRepository;
import com.bsuir.factorysystem.repository.ProductRepository;
import com.bsuir.factorysystem.repository.WorkshopRepository;
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
