/**
 * 
 */
package com.justmeet.okBoomer.service;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.justmeet.okBoomer.model.Category;
import com.justmeet.okBoomer.model.Event;
import com.justmeet.okBoomer.model.EventUser;
import com.justmeet.okBoomer.model.User;
import com.justmeet.okBoomer.repository.EventUserRepository;

/**
 * @author Tommaso Cippitelli
 *
 */
@Service
public class EventUserServiceImpl implements EventUserService {

	@Autowired
	EventUserRepository repo;
	
	
	@Override
	public void save(EventUser eventUser) {
		// TODO Auto-generated method stub
		repo.save(eventUser);
	}


	@Override
	public List<Event> eventsPartecipated(User id) {
		// TODO Auto-generated method stub
		return repo.eventsPartecipated(id);
	}


	@Override
	public List<EventUser> findByUser(User u) {
		// TODO Auto-generated method stub
		return repo.findByUser(u);
	}


	@Override
	public void delete(EventUser id) {
		// TODO Auto-generated method stub
		repo.delete(id);
		
	}


	@Override
	public long countByEvent(Event event) {
		// TODO Auto-generated method stub
		return repo.countByEvent(event);
	}



}
