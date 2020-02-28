/**
 * 
 */
package com.justmeet.okBoomer.validator;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.justmeet.okBoomer.model.EventUser;
import com.justmeet.okBoomer.model.User;
import com.justmeet.okBoomer.service.EventUserService;

/**
 * @author Tommaso Cippitelli
 *
 */
@Component
public class EventUserValidator implements Validator{

	@Autowired
	EventUserService service;

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return EventUser.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		EventUser Euser = (EventUser) target;
		
		if (service.findByUser(Euser.getUser()).contains(Euser)) {
            errors.rejectValue("user", "Duplicate.user");
        }
	}
}
