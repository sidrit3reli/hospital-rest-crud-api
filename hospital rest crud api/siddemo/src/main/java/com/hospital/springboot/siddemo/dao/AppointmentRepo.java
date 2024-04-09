package com.hospital.springboot.siddemo.dao;

import com.hospital.springboot.siddemo.entity.Appointment;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AppointmentRepo extends JpaRepository<Appointment, Integer> {
}
