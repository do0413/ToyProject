package com.dohyeong.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
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
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, 	Authentication auth) throws Exception {
		logger.info("Welcome home! The client locale is {}.", locale);
		 
		//UserDetails userDetails = (UserDetails) auth.getPrincipal();
	    //model.addAttribute("author",userDetails.getAuthorities());
	       
	    
	    
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );

		
		System.out.println("----------------auth:" + auth);
		
		
		return "home";

		
	}
	
}
