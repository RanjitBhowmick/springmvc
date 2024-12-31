package com.vtech.springmvc.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.vtech.springmvc.bean.Student;

@Service
public class StudentService {

	private static List<Student> studentList = new ArrayList<>();

	public List<Student> getStudentDetails() {
		return studentList;
	}

	public List<Student> addStudentDetails(Student s) {
		studentList.add(s);
		return studentList;
	}

	public List<Student> searchStudentDetails(String sname) {
		List<Student> studentList1 = new ArrayList<>();
		for (Student student : studentList) {
			if (student.getName().equals(sname)) {
				studentList1.add(student);
				break;
			}
		}
		return studentList1;
	}

}
