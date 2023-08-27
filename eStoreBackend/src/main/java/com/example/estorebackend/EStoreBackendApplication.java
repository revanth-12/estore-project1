package com.example.estorebackend;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class EStoreBackendApplication {

	public static void main(String[] args) {
		System.setProperty("spring.config.location", "application.properties");   
		SpringApplication.run(EStoreBackendApplication.class, args);
	}

}
