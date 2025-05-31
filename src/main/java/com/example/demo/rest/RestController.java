package com.example.demo.rest;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@org.springframework.web.bind.annotation.RestController
@RequestMapping(value = "/api")
public class RestController {
	
	@GetMapping("/demo")
	public String getDemo() {
		return "Hello there";
	}
	

}
