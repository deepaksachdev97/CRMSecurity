package com.crm.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.crm.entities.Customer;

@Repository
public class CustomerDAOImpl implements CustomerDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void addCustomer(Customer customer) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(customer);
	}

	public List<Customer> getAllCustomers() {
		Session session = sessionFactory.getCurrentSession();
		List<Customer> customerList = session.createQuery("from Customer").getResultList();
		return customerList;
	}

	public Customer getCustomer(int id) {
		Session session = sessionFactory.getCurrentSession();
		Customer customer = session.get(Customer.class, id);
		return customer;
	}

	public void deleteCustomer(int id) {
		Session session = sessionFactory.getCurrentSession();
		System.out.println("Deleting Customer");
		Query query = session.createQuery("delete from Customer where id= :id");
		query.setParameter("id", id);
		query.executeUpdate();
	}
}
