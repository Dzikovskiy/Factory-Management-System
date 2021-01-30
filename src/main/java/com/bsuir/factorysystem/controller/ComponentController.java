package com.bsuir.factorysystem.controller;

import com.bsuir.factorysystem.entity.Component;
import com.bsuir.factorysystem.repository.ComponentRepository;
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
        componentRepository.deleteById(id);
        return "redirect:/tech";
    }
}
