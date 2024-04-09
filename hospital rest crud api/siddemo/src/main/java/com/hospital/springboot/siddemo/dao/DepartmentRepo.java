package com.hospital.springboot.siddemo.dao;

import com.hospital.springboot.siddemo.entity.Department;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DepartmentRepo extends JpaRepository<Department, Integer>  {

}
