package com.bsuir.FactorySystem.controller;

import com.bsuir.FactorySystem.Entities.Component;
import com.bsuir.FactorySystem.Repository.ComponentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TechController {

    @Autowired
    private ComponentRepository componentRepository;

    @GetMapping("/tech")
    public String mainTech(Model model) {
        Iterable<Component> components = componentRepository.findAll();

        model.addAttribute("components", components);

        return "tech";
    }

}
