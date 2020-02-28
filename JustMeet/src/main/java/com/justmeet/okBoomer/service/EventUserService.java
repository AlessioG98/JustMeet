/**
 * 
 */
package com.justmeet.okBoomer.service;

import java.sql.Date;
import java.util.List;

import com.justmeet.okBoomer.model.Category;
import com.justmeet.okBoomer.model.Event;
import com.justmeet.okBoomer.model.EventUser;
import com.justmeet.okBoomer.model.User;

/**
 * @author Tommaso Cippitelli
 *
 */
public interface EventUserService {

	void save(EventUser eventUser);
	
	List<Event> eventsPartecipated(User id);
	
	List<EventUser> findByUser(User u);

	void delete(EventUser id);
	

}
