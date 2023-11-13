package com.taxah.spring.mvc;

public enum Departments {
    IT("Information Technology"),
    HR("Human Resources"),
    SALES("Sales");
    private final String description;

    Departments(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }
}
