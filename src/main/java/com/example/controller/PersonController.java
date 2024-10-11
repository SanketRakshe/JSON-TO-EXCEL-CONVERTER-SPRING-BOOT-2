package com.example.controller;

import com.example.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PersonController {

    @Autowired
    private PersonService personService;

    @GetMapping("/generate-excel")
    public String generateExcel() {
        try {
            personService.generateExcelFromJSON();
            return "Excel file generated successfully!";
        } catch (Exception e) {
            return "Error occurred: " + e.getMessage();
        }
    }
}

