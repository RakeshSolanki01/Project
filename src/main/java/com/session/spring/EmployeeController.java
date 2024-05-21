package com.session.spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.session.spring.model.Employee;
import com.session.spring.service.EmployeeService;

@Controller
@RequestMapping("/employee")
public class EmployeeController {

	private EmployeeService employeeService;

	@Autowired(required = true)
	@Qualifier(value = "employeeService")
	public void setEmployeeService(EmployeeService es) {
		this.employeeService = es;
	}

	@RequestMapping("/list")
	public String employeeList(Model model) {
		model.addAttribute("listEmployee", this.employeeService.employeelist());
		return "employeeList";

	}

	@RequestMapping(value = "/addEmployee", method = RequestMethod.POST)
	public String AddEmployee(@ModelAttribute("employee") Employee emp) {
		if (emp.getId() == 0) {
			this.employeeService.addEmployee(emp);
		} else {
			this.employeeService.updateEmployee(emp);
		}
		return "redirect:/employee/list";
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String AddNewEmployee(Model model) {
		model.addAttribute("employee", new Employee());
		return "addEmployee";
	}

	@RequestMapping(value = "/remove/{id}", method = RequestMethod.GET)
	public String removeEmployee(@PathVariable("id") int id) {
		this.employeeService.removeEmployee(id);
		return "redirect:/employee/list";
	}

	@RequestMapping(value = "/edit/{id}")
	public String editEmployee(@PathVariable("id") int id, Model model) {
		model.addAttribute("employee", this.employeeService.getEmployeeById(id));
		model.addAttribute("listEmployee", this.employeeService.employeelist());
		return "editForm";
	}

}
