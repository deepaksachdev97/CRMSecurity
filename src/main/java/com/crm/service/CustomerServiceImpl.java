package com.crm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.crm.dao.CustomerDAO;
import com.crm.entities.Customer;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerDAO customerDao;

	@Transactional
	public void addCustomer(Customer customer) {
		customerDao.addCustomer(customer);
	}

	@Transactional
	public List<Customer> getAllCustomers() {
		return customerDao.getAllCustomers();
	}

	@Transactional
	public Customer getCustomer(int id) {	
		return customerDao.getCustomer(id);
	}

	@Transactional
	public void deleteCustomer(int id) {
		customerDao.deleteCustomer(id);		
	}

}
