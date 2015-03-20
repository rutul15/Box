package com.davidoladeji.box.repository;

import com.davidoladeji.box.model.Account;
import com.davidoladeji.box.model.Employee;
import org.springframework.data.jpa.repository.JpaRepository;

import javax.transaction.Transactional;

/**
 * Created by Daveola on 2/16/2015.
 */

@Transactional
public interface EmployeeRepository extends JpaRepository<Employee, Long> {


}
