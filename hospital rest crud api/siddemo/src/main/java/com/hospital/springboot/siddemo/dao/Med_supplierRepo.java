package com.hospital.springboot.siddemo.dao;

import com.hospital.springboot.siddemo.entity.Med_supplier;
import org.springframework.data.jpa.repository.JpaRepository;

public interface Med_supplierRepo extends JpaRepository<Med_supplier, Integer> {
}
