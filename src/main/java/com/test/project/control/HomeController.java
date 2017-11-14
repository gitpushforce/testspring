package com.test.project.control;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.test.project.pojo.HomePojo;
import com.test.project.service.HomeService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private HomeService homeService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		
//		String formattedDate = dateFormat.format(date);
//		
//		model.addAttribute("formattedDate", formattedDate );
		
		HomePojo homePojo = new HomePojo();
		model.addAttribute("admin", homePojo);
		
		return "home";
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String adminSave(@ModelAttribute("admin")HomePojo pojoForm, Model model, RedirectAttributes ra) {
		//model.addAttribute("pojoForm", pojoForm);
		
		if (homeService.save(pojoForm)) {
			ra.addFlashAttribute("result", "todo correcto");
		} else {
			ra.addFlashAttribute("result", "error al realizar los cambios");
		}
		
		return "redirect:/about";
	}
	
	@RequestMapping(value = "/about")
	public String showAbout(@ModelAttribute("result")String resultado, Model model) {
		model.addAttribute("result", resultado);
		return "about";
	}
	
}
