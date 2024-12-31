package com.vtech.springmvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.vtech.springmvc.bean.Student;
import com.vtech.springmvc.service.StudentService;

import jakarta.validation.Valid;

@Controller
public class StudentController {

	@Autowired
	private StudentService studentService;

	@GetMapping("/getStudentDetails")
	public ModelAndView getStudent() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studentListPage");
		List<Student> studentDetailsList = studentService.getStudentDetails();
		mv.addObject("studentList", studentDetailsList);
		return mv;
	}

	@GetMapping("/addNewStudentDetails")
	public ModelAndView addStudentPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("addStudent");
		return mv;
	}

	@PostMapping("/addNewStudent")
	public ModelAndView addStudentDetails(@Valid @ModelAttribute Student student, BindingResult bindingResult) {
		ModelAndView mv = new ModelAndView();
		if (bindingResult.hasErrors()) {
			mv.addObject("error", bindingResult.getFieldError().getDefaultMessage());
			mv.addObject("student", student);
			mv.setViewName("addStudent");
			return mv;
		}
		mv.setViewName("studentListPage");
		List<Student> studentDetailsList = studentService.addStudentDetails(student);
		mv.addObject("studentList", studentDetailsList);
		return mv;
	}

	@GetMapping("/searchStudentDetails")
	public ModelAndView searchStudentPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("searchStudent");
		return mv;
	}

	@PostMapping("/searchStudent")
	public ModelAndView searchStudentDetails(@RequestParam String name) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studentListPage");
		List<Student> studentDetailsList = studentService.searchStudentDetails(name);
		mv.addObject("studentList", studentDetailsList);
		return mv;
	}

}
