package com.vidyalaya.hobby.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.vidyalaya.hobby.entities.Role;

public interface RoleRepository extends JpaRepository<Role, Long> {

	Role findByName(String string);

}
