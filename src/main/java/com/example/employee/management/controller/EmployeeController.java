package com.example.employee.management.controller;


import java.util.Arrays;
import java.util.List;

import javax.validation.Valid;

import com.example.employee.management.model.Employee;
import com.example.employee.management.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;


@Controller
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;

    @GetMapping("/")
    public String showHomePage() {
        return "baseLayout";
    }

    @GetMapping("/employees")
    public String showEmployeeList(Model model) {
        List<Employee> employees = employeeService.getAllEmployees();
        model.addAttribute("employees", employees);
        return "employee-list";
    }

    @GetMapping("/employees/add")
    public String showAddEmployeeForm(Model model) {
        Employee employee = new Employee();
        model.addAttribute("employee", employee);
        List<Employee> managers = employeeService.findManagers();
        model.addAttribute("managers", managers);
        return "add-employee";
    }

    @PostMapping("/employees/add")
    public String addEmployee(@ModelAttribute("employee") @Valid Employee employee, BindingResult bindingResult, @RequestParam(name = "manager.id", required = false) Long managerId) {
        if (bindingResult.hasErrors()) {
            return "add-employee";
        } else {
            System.out.println("My manager id:"+managerId);
            if (managerId != null) {
                 Employee manager = employeeService.getEmployeeById(managerId);
                employee.setManager(manager);
            }else if(managerId==null){
                employee.setManager(null);
            }
            employeeService.saveEmployee(employee);
            return "redirect:/employees";
        }
    }

    @GetMapping("/employees/edit/{id}")
    public String showEditEmployeeForm(@PathVariable("id") Long id, Model model) {
        Employee employee = employeeService.getEmployeeById(id);
        System.out.println("My employee name:"+employee.getFirstName());
        model.addAttribute("employee", employee);
        model.addAttribute("managers", employeeService.findManagers());
        return "edit-employee";
    }

    @PostMapping("/employees/edit/{id}")
    public String editEmployee(@PathVariable("id") Long id, @ModelAttribute("employee") @Valid Employee employee, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            model.addAttribute("employee", employee);
            model.addAttribute("managers", employeeService.findManagers());
            return "edit-employee";
        } else {
            employee.setId(id);
            employeeService.saveEmployee(employee);
            return "redirect:/employees";
        }
    }


    @GetMapping("/employees/{id}")
    public String showEmployeeDetails(@PathVariable("id") Long id, Model model) {
        Employee employee = employeeService.getEmployeeById(id);
        model.addAttribute("employee", employee);
        return "employee-details";
    }

    @ModelAttribute("departments")
    public List<String> populateDepartments() {
        return Arrays.asList("HR", "IT", "SALES", "FINANCE");
    }
}

