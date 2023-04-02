package com.example.employee.management.repository;

import com.example.employee.management.model.Employee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface EmployeeRepository extends JpaRepository<Employee, Long> {
    List<Employee> findByManagerIsNull();
    @Query("SELECT e FROM Employee e WHERE e.manager IS NULL")
    List<Employee> findManagers();
}