package com.bsuir.factorysystem.repository;

import com.bsuir.factorysystem.entity.ProductOrder;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

public interface ProductOrderRepository extends CrudRepository<ProductOrder, Long> {

    //List<Operation> findByName(String name);

    Optional<ProductOrder> findById(Long id);

}
