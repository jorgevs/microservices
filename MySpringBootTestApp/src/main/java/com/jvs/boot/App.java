package com.jvs.boot;


import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;

import java.util.Arrays;

@SpringBootApplication
public class App {
    public static void main(String[] args) {
        System.out.println("Starting my first SpringBoot App");
        ApplicationContext ctx = SpringApplication.run(App.class, args);
        for (String beanName : ctx.getBeanDefinitionNames()) {
            System.out.println("beanName1: " + beanName);
        }
    }

    @Bean
    public CommandLineRunner commandLineRunner(ApplicationContext ctx) {
        return args -> {

            System.out.println("Let's inspect the beans provided by Spring Boot:");

            String[] beanNames = ctx.getBeanDefinitionNames();
            Arrays.sort(beanNames);
            for (String beanName : beanNames) {
                System.out.println("beanName2: " + beanName);
            }

        };
    }
}
