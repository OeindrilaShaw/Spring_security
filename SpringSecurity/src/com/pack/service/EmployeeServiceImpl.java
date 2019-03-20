package com.pack.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pack.Dao.EmployeeDao;
import com.pack.model.Employee;
@Service
public class EmployeeServiceImpl implements EmployeeService {
	@Autowired
private EmployeeDao employeeDao;
	
	@Transactional
	public void deleteEmployee(Integer id) {
		// TODO Auto-generated method stub
		this.employeeDao.deleteEmployee(id);
	}

	
	@Transactional
	public void addEmployee(Employee e) {
		// TODO Auto-generated method stub
		employeeDao.addEmployee(e);
	}

 @Transactional
	public List<Employee> listEmployees() {
		// TODO Auto-generated method stub
		List<Employee> l=employeeDao.listEmployees();
		return l;
	}

}
