package com.bsuir.factorysystem.repository;

import com.bsuir.factorysystem.entity.Product;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

public interface ProductRepository extends CrudRepository<Product, Long> {

    List<Product> findByName(String name);

    Optional<Product> findById(Long id);

}
