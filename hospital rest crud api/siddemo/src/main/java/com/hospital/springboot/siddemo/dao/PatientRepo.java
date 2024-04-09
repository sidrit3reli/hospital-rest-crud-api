package com.hospital.springboot.siddemo.dao;

import com.hospital.springboot.siddemo.entity.Patient;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PatientRepo extends JpaRepository<Patient, Integer> {
}
