package com.taxah.spring.mvc;


import com.taxah.spring.mvc.validation.CheckEmail;

import javax.validation.constraints.*;

public class Employee {
    @Size(min = 3, message = "Name must be min 3 symbols")
    private String name;
    @NotBlank(message = "surname is required field")
    private String surname;
    @Min(value = 500, message = "must be  greater than 499")
    @Max(value = 1500, message = "must be  less than 1501")
    private int salary;
    private Departments department;
    private CarBrands carBrand;
    private String[] languages;
    @Pattern(regexp = "\\+7 \\d{3} \\d{3} \\d{2} \\d{2}", message = "Please use pattern +7 xxx xxx xx xx")
    private String phoneNumber;
//    @Pattern(regexp = "^[a-zA-Z0-9]+@[a-zA-Z0-9]+.[a-zA-Z0-9]+$", message = "Please use pattern *@*.*")
    @CheckEmail
    private String email;


    public Employee() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }

    public Departments getDepartment() {
        return department;
    }

    public void setDepartment(Departments department) {
        this.department = department;
    }


    public CarBrands getCarBrand() {
        return carBrand;
    }

    public void setCarBrand(CarBrands carBrand) {
        this.carBrand = carBrand;
    }

    public String[] getLanguages() {
        return languages;
    }

    public void setLanguages(String[] languages) {
        this.languages = languages;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", salary=" + salary +
                ", department='" + department + '\'' +
                '}';
    }
}
