package com.crm.service;

import java.util.List;

import com.crm.entities.Customer;

public interface CustomerService {

	public void addCustomer(Customer customer);

	public List<Customer> getAllCustomers();

	public Customer getCustomer(int id);
	
	public void deleteCustomer(int id);

}
