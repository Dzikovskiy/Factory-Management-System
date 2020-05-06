package com.bsuir.FactorySystem.Entities;

import javax.persistence.*;
import java.util.Map;

@Entity
@Table(name = "product")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String name;

    @ElementCollection
    @CollectionTable(name = "product_component_mapping",
            joinColumns = {@JoinColumn(name = "product_id", referencedColumnName = "id")})
    @MapKeyColumn(name = "component_name")
    @Column(name = "number")
    Map<String,Integer> componentsNumberMap;


    @ElementCollection
    @CollectionTable(name = "product_operation_mapping",
            joinColumns = {@JoinColumn(name = "product_id", referencedColumnName = "id")})
    @MapKeyColumn(name = "operation_name")
    @Column(name = "seconds")
    Map<String,Integer> operationsSecondsMap;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Map<String, Integer> getComponentsNumberMap() {
        return componentsNumberMap;
    }

    public void setComponentsNumberMap(Map<String, Integer> components) {
        this.componentsNumberMap = components;
    }

    public Map<String, Integer> getOperationsSecondsMap() {
        return operationsSecondsMap;
    }

    public void setOperationsSecondsMap(Map<String, Integer> operationsSecondsMap) {
        this.operationsSecondsMap = operationsSecondsMap;
    }
}
