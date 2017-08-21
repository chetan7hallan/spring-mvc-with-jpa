package com.contest.portal;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.contest.model.MobileForm;
import com.contest.model.Otp;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		
		logger.info("--HOME PAGE--");
		
		return "home";
	}
	
	@RequestMapping(value="enter-mobile" , method = RequestMethod.GET)
	public String mobileInputView(Model model){
		
		model.addAttribute("mobileForm" , new MobileForm());
		
		return "enter-mobile";
	}
	
	@RequestMapping(value="validate-mobile" , method = RequestMethod.POST)
	public String verifyMobile(@Validated @ModelAttribute("mobileForm")MobileForm mobileForm, Model model){
		
		model.addAttribute("otpForm", new Otp());
		
		return "validate-mobile";
	}
	
	@RequestMapping(value="welcome-user" , method = RequestMethod.POST)
	public String welcomeUser(Model model){
		return "welcome-user";
	}
	
	@RequestMapping(value="select-language" , method = RequestMethod.GET)
	public String selectLanguage(Model model){
		return "select-language";
	}
	
	@RequestMapping(value="contest-question" , method = RequestMethod.GET)
	public String contestQuestionGenerator(Model model){
		
		model.addAttribute("footerWithScore",true);
		return "contest-question";
	}
	
	
}
