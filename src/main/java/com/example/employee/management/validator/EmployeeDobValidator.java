package com.example.employee.management.validator;

import com.example.employee.management.model.Employee;
import jdk.vm.ci.meta.Local;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import java.time.LocalDate;
import java.time.Period;

public class EmployeeDobValidator implements ConstraintValidator<Employee.EmployeeDob, LocalDate> {
private static final int MIN_AGE=18;
    @Override
    public  void initialize(Employee.EmployeeDob constraintAnnotation){

    }

    @Override
    public boolean isValid(LocalDate dob, ConstraintValidatorContext context){
        if(dob==null){
            return false;
        }
        LocalDate now=LocalDate.now();
        int age= Period.between(dob,now).getYears();
        return age>=MIN_AGE;
    }
}
