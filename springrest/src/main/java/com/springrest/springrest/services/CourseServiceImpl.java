package com.springrest.springrest.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.springrest.springrest.entities.Course;


@Service
public class CourseServiceImpl implements CourseService {

	List<Course> list;
	
	public CourseServiceImpl() {
		
		list=new ArrayList();
		list.add(new Course(14,"Java","Core Java"));
		list.add(new Course(15,"Springboot","J2EE"));
		list.add(new Course(16,"REST API","J2EE"));
	}
	

	@Override
	public List<Course> getCourses() {
		return list;
	}
	
}
