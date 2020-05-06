package com.bsuir.FactorySystem.controller;

import com.bsuir.FactorySystem.Entities.Operation;
import com.bsuir.FactorySystem.Entities.Product;
import com.bsuir.FactorySystem.Entities.Workshop;
import com.bsuir.FactorySystem.Repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

@Controller
public class ProductController {

    @Autowired
    private ProductRepository productRepository;

    @PostMapping("/saveProduct")
    public String saveProduct(@RequestParam String name,@RequestParam String[] componentName,@RequestParam Integer[] componentNumber) {

        Map<String,Integer> components = new HashMap<>();

        for (int i = 0;i<componentName.length;i++){
            components.put(componentName[i],componentNumber[i]);
           // System.out.println(componentName[i]+" "+componentNumber[i]);

        }
        Product product = new Product();
        product.setName(name);
        product.setComponentsNumberMap(components);
        productRepository.save(product);
        return "redirect:/tech";
    }

    @PostMapping("/deleteProduct")
    public String deleteOperation(@RequestParam Long id) {
        productRepository.deleteById(id);
        return "redirect:/tech";
    }

}
