package com.jvs.CloudConfigClient;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

import static java.lang.System.out;

@SpringBootApplication
public class CloudConfigClientApplication {

	public static void main(String[] args) {
        ApplicationContext ctx = SpringApplication.run(CloudConfigClientApplication.class, args);
        System.out.println(ctx.getApplicationName());
	}
}
