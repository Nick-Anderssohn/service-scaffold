package com.nickanderssohn.servicescaffold;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;

import java.util.Arrays;

@SpringBootApplication
public class ServiceScaffoldApplication {

    public static void main(String[] args) {
        SpringApplication.run(ServiceScaffoldApplication.class, args);
    }
}
