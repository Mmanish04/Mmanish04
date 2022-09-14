package com.vidyalaya.hobby.services;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vidyalaya.hobby.dto.Trainee;
import com.vidyalaya.hobby.entities.Enrollment;
import com.vidyalaya.hobby.entities.User;
import com.vidyalaya.hobby.repos.EnrollmentRepository;
import com.vidyalaya.hobby.repos.UserRepository;

@Service
public class TrainingServiceImpl implements TrainingService {

	@Autowired
	EnrollmentRepository enrollmentRepository;
	
	@Autowired
	UserRepository userRepository;
	
	@Override
	public List<Trainee> getTrainees(Long instructorId) {
		List<Enrollment> enrollments = enrollmentRepository.findAllByInstructorId(instructorId);
		List<Trainee> listOfTrainees = new ArrayList<Trainee>();
		for(Enrollment e : enrollments) {
			Trainee t = new Trainee();
			Long userId = e.getUserId();
			User trainee = userRepository.findById(userId).get();
			t.setEnrollmentId(e.getId());
			t.setSkillId(e.getSkillId());
			t.setSkillName(e.getSkillName());
			t.setTraineeName(trainee.getFirstName() + " " + trainee.getLastName());
			t.setTraineeEmail(trainee.getEmail());
			t.setTraineePhoneNumber(trainee.getPhoneNumber());
			t.setAcquired(e.getAcquired());
			listOfTrainees.add(t);
		}
		return listOfTrainees;
	}

	@Override
	public void markAsTrained(Long enrollmentId) {
		Enrollment enrollment = enrollmentRepository.findById(enrollmentId).get();
		enrollment.setAcquired(true);
		enrollment.setDateCompleted(new Date());
		enrollmentRepository.save(enrollment);
		
	}

}
