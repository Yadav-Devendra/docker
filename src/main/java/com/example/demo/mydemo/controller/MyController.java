package com.example.demo.mydemo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MyController {
	
	@ResponseBody
	@GetMapping("/home")
	public String home() {
		System.out.println("Hello World");
		return "Hello World";
	}

}
