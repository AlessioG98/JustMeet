package com.justmeet.okBoomer.web;

import java.security.Principal;
import java.sql.Date;
import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.justmeet.okBoomer.model.Category;
import com.justmeet.okBoomer.model.Event;
import com.justmeet.okBoomer.model.User;

import com.justmeet.okBoomer.service.EventService;
import com.justmeet.okBoomer.service.EventUserService;
import com.justmeet.okBoomer.service.UserService;

@Controller
public class EventController {
	@Autowired
	private EventService eventService;

	@Autowired
	UserService userService;
	@Autowired
	EventUserService eUService;

	@GetMapping(value = "/newEvent")
	public String createEvent(Model model) {
		model.addAttribute("eventForm", new Event());
		return "newEvent";
	}

	@PostMapping("/newEvent")
	public String createEvent(@ModelAttribute("eventForm") Event eventForm, Model model, Principal principal) {
		User u = userService.findByUsername(principal.getName());
		eventForm.setOwner(u.getUsername());
		System.out.println(eventForm.getId());
		eventForm.setId(eventForm.getId());
		eventService.save(eventForm);
		return "index";
	}

	@GetMapping("/searchEvent")
	public String searchEventBy(Model model) {
		model.addAttribute("searchForm", new Event());
		return "searchEvent";
	}

	@PostMapping("/searchEvent")
	public String searchEventBy(@ModelAttribute("searchForm") Event searchForm,
			@ModelAttribute("searchResults") ArrayList<Event> searchResults, Model model,
			@Param(value = "categoria") Category categoria, @Nullable @Param(value = "dataEvento") Date dataEvento) {
		searchResults.addAll(eventService.searchBy(categoria, dataEvento));
		model.addAllAttributes(searchResults);
		return "searchResult";
	}

	@GetMapping(value = "/eventDetails")
	public String showDetailsEvent(@RequestParam long id, Model model) {
		model.addAttribute("eventDetail", eventService.showDetails(id).get());
		return ("eventDetails");
	}

	@GetMapping("/searchMyEvents")
	public String findMyEvents(Model model) {
		model.addAttribute("mySearchResult", new Event());
		return ("searchMyEvents");
	}

	@PostMapping("/searchMyEvents")
	public String findMyEvents(Principal user, Model model,
			@ModelAttribute("mySearchResult") ArrayList<Event> mySearchResult) {

		mySearchResult.addAll(eventService.findByUserUsername(user));
		model.addAllAttributes(mySearchResult);
		return ("myEvents");

	}



	@GetMapping("/modifyEvents")
	public String modifyEvent(Model model, @RequestParam long id) {
		model.addAttribute("modifyEvent", eventService.showDetails(id).get());
		return "modifyEvents";
	}

	@PostMapping("/modifyEvents")
	public String modifyEvent(@ModelAttribute("modifyEvent") Event modifyEvent, Principal user) {
		modifyEvent.setOwner(user.getName());
		eventService.save(modifyEvent);
		return "index";
	}

	@GetMapping("/deleteEvents")
	public String deleteEvents(Model model, @RequestParam long id) {
		eventService.deleteById(id);
		return "redirect:/index.jsp";
	}
	
	

}
