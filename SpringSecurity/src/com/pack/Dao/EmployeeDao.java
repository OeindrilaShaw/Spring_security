package com.pack.Dao;

import java.util.List;

import com.pack.model.Employee;

public interface EmployeeDao {
	public void addEmployee(Employee e);
	public List<Employee> listEmployees();
	public void deleteEmployee(Integer id);
}
