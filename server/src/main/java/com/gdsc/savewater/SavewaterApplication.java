package com.gdsc.savewater;

import com.gdsc.savewater.config.AppProperties;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

@EnableConfigurationProperties(AppProperties.class)
@SpringBootApplication
@EnableJpaAuditing
public class SavewaterApplication {

	public static void main(String[] args) {
		SpringApplication.run(SavewaterApplication.class, args);
	}
}
