package com.covid.App;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@ComponentScan({"com.covid"})
@SpringBootApplication
@EnableAutoConfiguration
@EnableJpaRepositories("com.covid.repository")
@EntityScan("com.covid.model")
public class AppMain {
	public static void main(String[] args) {
		SpringApplication.run(AppMain.class, args);
	}
}
