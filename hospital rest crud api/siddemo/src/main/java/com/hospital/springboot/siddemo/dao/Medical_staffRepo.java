package com.hospital.springboot.siddemo.dao;

import com.hospital.springboot.siddemo.entity.Medical_staff;
import org.springframework.data.jpa.repository.JpaRepository;

public interface Medical_staffRepo extends JpaRepository<Medical_staff, Integer> {
}
