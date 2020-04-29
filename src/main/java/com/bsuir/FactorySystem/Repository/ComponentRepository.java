package com.bsuir.FactorySystem.Repository;

import com.bsuir.FactorySystem.Entities.Component;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

public interface ComponentRepository extends CrudRepository<Component, Integer> {

    List<Component> findByName(String name);;
    Optional<Component> findById(Long id);

}
