package com.devproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.java.Log;

@Log
@Controller
public class HomeController {
	@RequestMapping(value="/")
	public String home() {
		return "home";
	}
	
	@RequestMapping(value="/formHome")
	public String formHome() {
		return "formHome";
	}
	
	@RequestMapping(value="/ajaxHome")
	public String ajaxHome() {
		return "ajaxHome";
	}
}
