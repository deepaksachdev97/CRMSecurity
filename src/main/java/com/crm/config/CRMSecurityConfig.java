package com.crm.config;

import java.beans.PropertyVetoException;
import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.mchange.v2.c3p0.ComboPooledDataSource;

@Configuration
@EnableWebMvc
@EnableTransactionManagement
@ComponentScan(basePackages = "com.crm")
@PropertySource({ "classpath:application-properties.properties" })
public class CRMSecurityConfig implements WebMvcConfigurer {

	@Autowired
	private Environment env;
	
	@Bean	
	public ViewResolver viewResolver() {
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setPrefix("/WEB-INF/view/");
		viewResolver.setSuffix(".jsp");
		return viewResolver;		
	}

	@Bean
	public DataSource myDataSource() {
		ComboPooledDataSource comboPool = new ComboPooledDataSource();
		try {
			comboPool.setDriverClass("com.mysql.jdbc.Driver");
		} catch (PropertyVetoException exc) {
			throw new RuntimeException(exc);
		}
		comboPool.setJdbcUrl(env.getProperty("jdbc.url"));
		comboPool.setUser(env.getProperty("jdbc.user"));
		System.out.println("User :"+env.getProperty("jdbc.user"));
		comboPool.setPassword(env.getProperty("jdbc.password"));

		comboPool.setInitialPoolSize(getPropertyInInt("connection.pool.initialPoolSize"));
		comboPool.setInitialPoolSize(getPropertyInInt("connection.pool.minPoolSize"));
		comboPool.setInitialPoolSize(getPropertyInInt("connection.pool.maxPoolSize"));
		comboPool.setInitialPoolSize(getPropertyInInt("connection.pool.maxIdleTime"));
		return comboPool;
	}

	private int getPropertyInInt(String property) {
		String propertyValue = env.getProperty(property);
		return Integer.parseInt(propertyValue);
	}

	@Bean
	@Autowired
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager hibernateTransactionManager = new HibernateTransactionManager();
		hibernateTransactionManager.setSessionFactory(sessionFactory);
		return hibernateTransactionManager;
	}

	@Bean
	public LocalSessionFactoryBean sessionFactory() {
		LocalSessionFactoryBean bean = new LocalSessionFactoryBean();
		bean.setDataSource(myDataSource());
		bean.setPackagesToScan(env.getProperty("hibernate.packagesToScan"));
		bean.setHibernateProperties(getHibernateProperties());
		return bean;
	}

	private Properties getHibernateProperties() {
		Properties properties = new Properties();
		properties.setProperty("hibernate.dialect", env.getProperty("hibernate.dialect"));
		properties.setProperty("hibernate.show_sql", env.getProperty("hibernate.show_sql"));
		return properties;
	}

}
