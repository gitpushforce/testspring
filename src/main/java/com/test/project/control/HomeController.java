package com.test.project.control;

import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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
		
		return "test";
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String adminSave(@ModelAttribute("admin")HomePojo pojoForm,
			Model model, RedirectAttributes ra) {
		//model.addAttribute("pojoForm", pojoForm);
		
		if (homeService.saveOrUpdate(pojoForm)) {
			List<HomePojo> all = homeService.findAll();
			ra.addFlashAttribute("result", "todo correcto");
			ra.addFlashAttribute("records", all);
		} else {
			ra.addFlashAttribute("result", "error al realizar los cambios");
		}
		return "redirect:/about";
	}
	
	@RequestMapping(value = "/about")
	public String showAbout(@ModelAttribute("result")String resultado,
			@ModelAttribute("records")List<HomePojo> all, Model model) {
		
		model.addAttribute("result", resultado);
		model.addAttribute("records", all);
		return "about";
	}
	
	@RequestMapping("/about/{adminnum}/update")
	public String showUpdate(Model model, @PathVariable("adminnum") int id) {
		
		HomePojo byIdResult = homeService.findById(id);
		
		model.addAttribute("admin", byIdResult);
		
		return "test";
	}
	
	@RequestMapping("/about/{adminnum}/delete")
	public String delete(Model model, @PathVariable("adminnum") int id) {
		String resultado = ""; 
		if (homeService.delete(id)) {
			model.addAttribute("result", "borrado correctamente");
		} else {
			model.addAttribute("result", "no se pudo borrar");
		}
		
		return "about";
	}
	
	@RequestMapping("/login")
	public String login() {
		
		return "login";	}
	
}
