package com.vidyalaya.hobby.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.vidyalaya.hobby.entities.User;

public interface UserRepository extends JpaRepository<User, Long> {

	User findByEmail(String email);
	
}
