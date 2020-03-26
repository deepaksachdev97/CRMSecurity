package com.crm.dao;

import java.util.List;

import com.crm.entities.Customer;

public interface CustomerDAO {
	
	public void addCustomer(Customer customer);
	
	public List<Customer> getAllCustomers();
	
	public Customer getCustomer(int id);
	
	public void deleteCustomer(int id);

}
