package com.example.employee.management.service;


import com.example.employee.management.model.Employee;

import java.util.List;

public interface EmployeeService {
    public List<Employee> getAllEmployees();
    public Employee getEmployeeById(Long id);
    public void saveEmployee(Employee employee);
    public void deleteEmployee(Long id);
    public List<Employee> findManagersWithNoManager();
    public List<Employee> getAllManagers();
    public List<Employee> findManagers();
}
