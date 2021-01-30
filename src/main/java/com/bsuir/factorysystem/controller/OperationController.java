package com.bsuir.factorysystem.controller;

import com.bsuir.factorysystem.entity.Operation;
import com.bsuir.factorysystem.entity.Workshop;
import com.bsuir.factorysystem.repository.OperationRepository;
import com.bsuir.factorysystem.repository.WorkshopRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Collection;

@Controller
public class OperationController {

    @Autowired
    private OperationRepository operationRepository;

    @Autowired
    private WorkshopRepository workshopRepository;

    @PostMapping("/saveOperation")
    public String saveOperation(@RequestParam String workshop_name, @RequestParam String operation_name) {
        Operation operation = new Operation();
        operation.setName(operation_name);
        Workshop workshop = new Workshop();

        if (!workshopRepository.findByName(workshop_name).isEmpty()) {
            workshop = workshopRepository.findByName(workshop_name).get(0);
            operation.setWorkshop(workshop);
            operationRepository.save(operation);

            return "redirect:/tech";

        }
        workshop.setName(workshop_name);
        workshopRepository.save(workshop);
        workshop = workshopRepository.findByName(workshop_name).get(0);
        operation.setWorkshop(workshop);
        operationRepository.save(operation);

        return "redirect:/tech";
    }

    @PostMapping("/deleteOperation")
    public String deleteOperation(@RequestParam Long id, @RequestParam(name = "workshop_name") String workshopName) {

        Workshop workshop = workshopRepository.findByName(workshopName).get(0);

        Collection<Operation> operations = workshop.getOperations();

        operations.removeIf(oper -> oper.getId().equals(id));

        workshop.setOperations(operations);

        workshopRepository.save(workshop);
        Operation operation = operationRepository.findById(id).get();
        operation.setWorkshop(null);
        operationRepository.save(operation);

        operationRepository.deleteById(id);
        return "redirect:/tech";
    }

}
