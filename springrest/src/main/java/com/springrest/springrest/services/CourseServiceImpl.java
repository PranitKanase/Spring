package com.springrest.springrest.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springrest.springrest.dao.CourseDao;
import com.springrest.springrest.entities.Course;


@Service
public class CourseServiceImpl implements CourseService {

	//List<Course> list;
	
	@Autowired
	private CourseDao courseDao;
	
	public CourseServiceImpl() {
		
		/*
		 * list=new ArrayList(); list.add(new Course(14,"Java","Core Java"));
		 * list.add(new Course(15,"Springboot","J2EE")); list.add(new
		 * Course(16,"REST API","J2EE"));
		 */
	}
	

	@Override
	public List<Course> getCourses() {
		/* return list; */
		return courseDao.findAll();
	}


	@Override
	public Course getCourse(long courseId) {
		/*
		 * Course c = null; for(Course course : list) { if(course.getId() == courseId) {
		 * c= course; break; } } return c;
		 */
		
		return courseDao.getOne(courseId);
	}


	@Override
	public Course addCourse(Course course) {
		/*
		 * list.add(course); return course;
		 */
		
		courseDao.save(course);
		return course;
	}


	@Override
	public Course updateCourse(Course course) {
		/*
		 * list.forEach(e -> { if(e.getId() == course.getId()) {
		 * e.setTitle(course.getTitle()); e.setDescription(course.getDescription()); }
		 * }); return null;
		 */
		
		courseDao.save(course);
		return course;

	}


	@Override
	public void deleteCourse(long parseLong) {
		/*
		 * list.forEach(); return null;
		 */
		Course entity = courseDao.getOne(parseLong);
		courseDao.delete(entity);
		
		
	}
	
}
