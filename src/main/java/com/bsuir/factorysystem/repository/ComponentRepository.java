package com.bsuir.factorysystem.repository;

import com.bsuir.factorysystem.entity.Component;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

public interface ComponentRepository extends CrudRepository<Component, Long> {

    List<Component> findByName(String name);

    Optional<Component> findById(Long id);

}
