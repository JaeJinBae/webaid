package com.webaid.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("home");
		
		return "index";
	}
	
	@RequestMapping(value = "/menu01_1", method = RequestMethod.GET)
	public String menu01_1() {
		logger.info("menu01_1 GET");
		
		return "menu01/menu01_01";
	}
	
	@RequestMapping(value = "/menu01_2", method = RequestMethod.GET)
	public String menu01_2() {
		logger.info("menu01_2 GET");
		
		return "menu01/menu01_02";
	}
	
	@RequestMapping(value = "/menu02_1", method = RequestMethod.GET)
	public String menu02_1() {
		logger.info("menu02_1 GET");
		
		return "menu02/menu02_01";
	}
	
	@RequestMapping(value = "/menu02_2", method = RequestMethod.GET)
	public String menu02_2() {
		logger.info("menu02_2 GET");
		
		return "menu02/menu02_02";
	}
	
	@RequestMapping(value = "/menu02_3", method = RequestMethod.GET)
	public String menu02_3() {
		logger.info("menu02_3 GET");
		
		return "menu02/menu02_03";
	}
	
	@RequestMapping(value = "/menu03_1", method = RequestMethod.GET)
	public String menu03_1() {
		logger.info("menu03_1 GET");
		
		return "menu03/menu03_01";
	}
	
	@RequestMapping(value = "/menu04_1", method = RequestMethod.GET)
	public String menu04_1() {
		logger.info("menu04_1 GET");
		
		return "menu04/menu04_01";
	}
	
	@RequestMapping(value = "/menu04_2", method = RequestMethod.GET)
	public String menu04_2() {
		logger.info("menu04_2 GET");
		
		return "menu04/menu04_02";
	}
}
