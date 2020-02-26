/**
 * 
 */
package com.justmeet.okBoomer.web;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.justmeet.okBoomer.model.Event;
import com.justmeet.okBoomer.model.EventUser;
import com.justmeet.okBoomer.model.User;
import com.justmeet.okBoomer.service.EventService;
import com.justmeet.okBoomer.service.EventUserService;
import com.justmeet.okBoomer.service.UserService;

/**
 * @author Tommaso Cippitelli
 *
 */
@Controller
public class EventUserController {
	@Autowired
	EventUserService eUService;
	@Autowired
	private EventService eventService;
	@Autowired
	UserService userService;
	
	
	@GetMapping("/addRequest")
	public String addRequest(@RequestParam long id, Model model, Principal user) {
		Event evento = eventService.findById(id);
		User u = userService.findByUsername(user.getName());
		EventUser e= new EventUser();
		e.setEvent(evento);
		e.setUser(u);
		eUService.save(e);
		return "addRequest";

	}
	
	@GetMapping("/eventsPartecipated")
	public String eventsPartecipated(Model model, Principal user) {
		User u= userService.findByUsername(user.getName());
		model.addAttribute("modifyEvent", eUService.eventsPartecipated(u));
		System.out.println(eUService.eventsPartecipated(u));
		return "eventsPartecipated";
	}
}
