package com.bsuir.FactorySystem.controller;

import com.bsuir.FactorySystem.Entities.Product;
import com.bsuir.FactorySystem.Repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

@Controller
public class ProductController {

    @Autowired
    private ProductRepository productRepository;

    @PostMapping("/saveProduct")
    public String saveProduct(@RequestParam String name, @RequestParam String[] componentName,
                              @RequestParam Integer[] componentNumber,
                              @RequestParam String[] operationName,
                              @RequestParam Integer[] operationSeconds, @RequestParam Long idProdModal) {

        Optional<Product> optionalProduct = productRepository.findById(idProdModal);
        Product product = optionalProduct.isPresent() ? optionalProduct.get() : new Product();


        Map<String, Integer> components = new HashMap<>();
        Map<String, Integer> operations = new HashMap<>();

        fillMap(components, componentName, componentNumber);// fill maps with data from params
        fillMap(operations, operationName, operationSeconds);


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

    @GetMapping("/getProductById/{id}")
    @ResponseBody
    public Optional<Product> getProductById(@PathVariable Long id) {
        return productRepository.findById(id);

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
