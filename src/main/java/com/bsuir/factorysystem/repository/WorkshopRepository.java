package com.bsuir.factorysystem.repository;

import com.bsuir.factorysystem.entity.Workshop;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

public interface WorkshopRepository extends CrudRepository<Workshop, Long> {

    List<Workshop> findByName(String name);

    Optional<Workshop> findById(Long id);

}