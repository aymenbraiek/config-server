package com.biat.targa.labs.dev.configserver;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.config.server.EnableConfigServer;

@EnableConfigServer
@SpringBootApplication
public class ConfigServerApplication {
     // spring cloud config server
	public static void main(String[] args) {
		SpringApplication.run(ConfigServerApplication.class, args);
	}

}
