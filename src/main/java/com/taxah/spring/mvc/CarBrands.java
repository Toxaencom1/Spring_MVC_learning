package com.taxah.spring.mvc;

public enum CarBrands {

    BMW("BMW"),
    AUDI("Audi"),
    MERSEDES("Mersedes-Benz"),
    HONDA("Honda E");

    private final String description;

    CarBrands(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }
}
