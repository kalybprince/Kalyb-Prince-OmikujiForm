package com.kalyb.codingdojo.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {
	@RequestMapping("/omikuji")
	public String omikuji() {
		return "omikuji.jsp";
	}
	
	@PostMapping(value="/processForm")
	public String processForm(
		HttpSession session,
		@RequestParam(value="quantity") String quantity,
		@RequestParam(value="city") String city,
		@RequestParam(value="person") String person,
		@RequestParam(value="endeavor") String endeavor,
		@RequestParam(value="thing") String thing,
		@RequestParam(value="nice") String nice){
		
		// Add to session
		session.setAttribute("quantity", quantity);
		session.setAttribute("city", city);
		session.setAttribute("person", person);
		session.setAttribute("endeavor", endeavor);
		session.setAttribute("thing", thing);
		session.setAttribute("nice", nice);
		
	    return "redirect:/show";
	}
	// ...


	@RequestMapping("/show")
    public String show(HttpSession session, Model model) {
		// Retrieve from session
		String quantity = (String) session.getAttribute("quantity");
		String city = (String) session.getAttribute("city");
		String person = (String) session.getAttribute("person");
		String endeavor = (String) session.getAttribute("endeavor");
		String thing = (String) session.getAttribute("thing");
		String nice = (String) session.getAttribute("nice");
		// Add from session to model
		model.addAttribute("quantity", quantity);
		model.addAttribute("city", city);
		model.addAttribute("person", person);
		model.addAttribute("endeavor", endeavor);
		model.addAttribute("thing", thing);
		model.addAttribute("nice", nice);
		
        return "show.jsp";
	}
}
