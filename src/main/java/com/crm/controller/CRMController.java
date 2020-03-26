package com.crm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crm.entities.Customer;
import com.crm.service.CustomerService;

@Controller
public class CRMController {
	
	@Autowired
	private CustomerService customerService;
	@RequestMapping("/")
	public String showHomePage() {
		return "home";
	}
	
	@RequestMapping("/customerForm")
	public String showAddCustomerForm(Model model) {
		Customer theCustomer = new Customer();
		model.addAttribute("theCustomer", theCustomer);
		return "add";
	}
	
	@RequestMapping("/addCustomer")
	public String addCustomer(@ModelAttribute("theCustomer") Customer customer) {
		customerService.addCustomer(customer);
		return "redirect:/showAllCustomers";
	}

	@RequestMapping("/showAllCustomers")
	public String showAllCustomers(Model model) {
		List<Customer> customers = customerService.getAllCustomers();		
		model.addAttribute("customers", customers);
		return "showAllCustomers";		
	}
	
	@RequestMapping("/updateCustomer")
	public String updateCustomer(Model model, @RequestParam int id) {
		Customer customer = customerService.getCustomer(id);		
		model.addAttribute("theCustomer", customer);
		return "add";
	}
	
	@RequestMapping("/deleteCustomer")
	public String deleteCustomer(@RequestParam int id) {
		customerService.deleteCustomer(id);				
		return "redirect:/showAllCustomers";
	}
	
	@RequestMapping("/showLogin")
	public String getLoginPage() {
		return "showLogin";		
	}
}
