package com.ebebekJavaDeveloperExamLogin.controler;




import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ebebekJavaDeveloperExamLogin.model.Username;
import com.ebebekJavaDeveloperExamLogin.service.UsernameService;



/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private UsernameService usernameService;

	
	

	
	
	
	@RequestMapping(value = "/addAccount", method = RequestMethod.GET)
	public ModelAndView listUsername(Model model, Username username) {
	
		model.addAttribute("/addAccount", usernameService.listUsername());
		return new ModelAndView("username");
	}
	
	
	@RequestMapping(value="/addUsername",method=RequestMethod.POST)
	public ModelAndView addUsername(@ModelAttribute("username")Username username ,@Valid Username validUsername,BindingResult  result) {
		if (result.hasErrors()) {
			return new ModelAndView("username");
		}else {
			usernameService.addUsername(username);
		}
		return new ModelAndView("redirect:/addAccount");
	}
	
	
	

}
