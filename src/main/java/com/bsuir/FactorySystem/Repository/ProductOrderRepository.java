package com.bsuir.FactorySystem.Repository;

import com.bsuir.FactorySystem.Entities.Operation;
import com.bsuir.FactorySystem.Entities.ProductOrder;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

public interface ProductOrderRepository extends CrudRepository<ProductOrder, Long> {

    //List<Operation> findByName(String name);

    Optional<ProductOrder> findById(Long id);

}
