package com.bsuir.FactorySystem.controller;

import com.bsuir.FactorySystem.Entities.Product;
import com.bsuir.FactorySystem.Repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.Map;

@Controller
public class ProductController {

    @Autowired
    private ProductRepository productRepository;

    @PostMapping("/saveProduct")
    public String saveProduct(@RequestParam String name, @RequestParam String[] componentName,
                              @RequestParam Integer[] componentNumber,
                              @RequestParam String[] operationName,
                              @RequestParam Integer[] operationSeconds) {

        Map<String, Integer> components = new HashMap<>();
        Map<String, Integer> operations = new HashMap<>();

        fillMap(components, componentName, componentNumber);// fill maps with data from params
        fillMap(operations, operationName, operationSeconds);

        Product product = new Product();
        product.setName(name);
        product.setComponentsNumberMap(components);
        product.setOperationsSecondsMap(operations);
        productRepository.save(product);
        return "redirect:/tech";
    }

    @PostMapping("/deleteProduct")
    public String deleteOperation(@RequestParam Long id) {
        productRepository.deleteById(id);
        return "redirect:/tech";
    }

    private void fillMap(Map<String, Integer> map, String[] name, Integer[] number) {
        for (int i = 0; i < name.length; i++) {
            int buf = number[i];
            if (map.containsKey(name[i])) {// check if same string was in map and if present sum numbers
                buf += map.get(name[i]);
            }
            map.put(name[i], buf);
        }
    }

}
