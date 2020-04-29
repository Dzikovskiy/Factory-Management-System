package com.bsuir.FactorySystem.controller;

import com.bsuir.FactorySystem.Entities.Component;
import com.bsuir.FactorySystem.Repository.ComponentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ComponentController {

    @Autowired
    private ComponentRepository componentRepository;

    @PostMapping("/saveComponent")
    public String saveComponent(Component component) {
        componentRepository.save(component);
        return "redirect:/tech";
    }

    @PostMapping("/deleteComponent")
    public String deleteComponent(@RequestParam Long id) {
        Component component = componentRepository.findById(id).get();
        componentRepository.delete(component);
        return "redirect:/tech";
    }
}
