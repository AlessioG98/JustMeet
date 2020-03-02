package com.justmeet.okBoomer.RepositoryLayerTest;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.Optional;


import com.justmeet.okBoomer.model.Role;
import com.justmeet.okBoomer.repository.RoleRepository;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;
import org.springframework.test.context.junit4.SpringRunner;


@RunWith(SpringRunner.class)
@DataJpaTest
public class RoleRepositoryTest {

	@Autowired
    private TestEntityManager entityManager;
	@Autowired
    private RoleRepository roleRepository;
	
	@Test
	public void whenFindByName_thenReturnRole() {
		// given
		Role role = new Role();
		role.setName("ROLE");
		entityManager.persist(role);
		entityManager.flush();
		
		//when
		Optional<Role> found=roleRepository.findById(role.getId());
		
		// then
	    assertThat(found.get().getId())
	      .isEqualTo(role.getId());
	}

}
