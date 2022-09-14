package com.vidyalaya.hobby.services;

import java.util.List;

import com.vidyalaya.hobby.dto.Trainee;

public interface TrainingService {

	public List<Trainee> getTrainees(Long instructorId);
	
	public void markAsTrained(Long enrollmentId);
}
