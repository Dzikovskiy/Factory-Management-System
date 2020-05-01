package com.bsuir.FactorySystem.Repository;

import com.bsuir.FactorySystem.Entities.Operation;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

public interface OperationRepository extends CrudRepository<Operation, Long> {

    List<Operation> findByName(String name);
    Optional<Operation> findById(Long id);

}
