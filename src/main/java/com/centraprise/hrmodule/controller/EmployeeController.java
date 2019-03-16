package com.centraprise.hrmodule.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.centraprise.hrmodule.exception.DatabaseException;
import com.centraprise.hrmodule.model.EmployeeDetails;
import com.centraprise.hrmodule.model.EmployeeListDTO;
import com.centraprise.hrmodule.service.EmployeeService;

@Controller
@PreAuthorize("hasAnyRole('ADMIN')")
public class EmployeeController {

	@Autowired
	private EmployeeService employeeService;

	@RequestMapping("/emp")
	public String getEmp() {
		return "redirect:/employeeList";
	}

	@RequestMapping("/employeeList")
	public String getEmployeeList(Model model, HttpServletRequest request) {
		List<EmployeeListDTO> employeeDetails = null;
		employeeDetails=new  ArrayList<>();
		employeeDetails.add(new EmployeeListDTO(1,"avinash",11,"test","test","test","1234"));
		model.addAttribute("employees", employeeDetails);
		/*try {
			employeeDetails = employeeService.getEmployeesList();
			if (employeeDetails != null) {
				model.addAttribute("employees", employeeDetails);
			} else {

			}

		} catch (DatabaseException e) {

		} catch (Exception e) {

		}
*/
		return "employee";
	}

	@GetMapping("/addemployee")
	public String getNewEmployeeForm() {
		return "addEmployee";
	}

	@PostMapping("/addemployee")
	public String addNewEmployee() {
		return "addEmployee";
	}

}
