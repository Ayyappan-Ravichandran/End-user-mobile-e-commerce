package com.cognizant.application;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;


@SpringBootApplication
@ComponentScan("com.cognizant")
public class endUserMobileEcommerceApplication {	

		public static void main(String[] args) {
			SpringApplication.run(endUserMobileEcommerceApplication.class, args);
		}

	}


