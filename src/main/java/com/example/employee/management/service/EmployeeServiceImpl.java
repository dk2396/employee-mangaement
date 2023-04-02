package com.example.employee.management.service;

import java.util.List;

import com.example.employee.management.model.Employee;
import com.example.employee.management.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    private EmployeeRepository employeeRepository;

    @Override
    @Transactional(readOnly = true)
    public List<Employee> getAllEmployees() {
        return employeeRepository.findAll();
    }
    @Override
    @Transactional(readOnly = true)
    public List<Employee> getAllManagers(){
        return employeeRepository.findAll();
    }

    @Override
    @Transactional(readOnly = true)
    public Employee getEmployeeById(Long id) {
        return employeeRepository.findById(id).orElse(null);
    }

    @Override
    @Transactional
    public void saveEmployee(Employee employee) {
        employeeRepository.save(employee);
    }

    @Override
    @Transactional
    public void deleteEmployee(Long id) {
        employeeRepository.deleteById(id);
    }


    public List<Employee> findManagersWithNoManager() {
        return employeeRepository.findByManagerIsNull();
    }
    public List<Employee> findManagers() {
        return employeeRepository.findManagers();
    }
}

