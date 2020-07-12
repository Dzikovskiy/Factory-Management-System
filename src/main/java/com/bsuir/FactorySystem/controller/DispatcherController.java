package com.bsuir.FactorySystem.controller;

import com.bsuir.FactorySystem.Entities.OrderStatus;
import com.bsuir.FactorySystem.Entities.Product;
import com.bsuir.FactorySystem.Entities.ProductOrder;
import com.bsuir.FactorySystem.Repository.ProductOrderRepository;
import com.bsuir.FactorySystem.Repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Date;

@Controller
public class DispatcherController {


    @Autowired
    private ProductRepository productRepository;
    @Autowired
    private ProductOrderRepository productOrderRepository;

    @GetMapping("/dispatcherOrders")
    public String dispatcherOrders(Model model) {
        Iterable<Product> products = productRepository.findAll();
        Iterable<ProductOrder> orders = productOrderRepository.findAll();
        model.addAttribute("products", products);
        model.addAttribute("orders", orders);

        return "dispatcherOrders";
    }

    @PostMapping("/saveProductOrder")
    public String saveProductOrder(@RequestParam String product_name, @RequestParam Integer number,
                                   @RequestParam @DateTimeFormat(pattern = "yyyy-MM-dd") Date date) {
        Product product;

        if (!productRepository.findByName(product_name).isEmpty()) {
            product = productRepository.findByName(product_name).get(0);

            ProductOrder order = new ProductOrder();
            order.setProduct(product);
            order.setBalance(0);
            order.setStatus(OrderStatus.CREATED);
            order.setProduced(0);
            order.setNumber(number);
            order.setAvailabilityDate(date);
            productOrderRepository.save(order);

            return "redirect:/dispatcherOrders";
        }

        return "redirect:/dispatcherOrders";
    }

}
