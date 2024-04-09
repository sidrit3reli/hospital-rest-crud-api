package com.hospital.springboot.siddemo.entity;

import jakarta.persistence.*;

import java.time.LocalDate;

@Entity
@Table(name="appointment")
public class Appointment {

    // define fields
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="patient_id")
    private Integer patientid;
    @OneToOne(mappedBy = "appointment")
        private Patient patient;

    @Column(name="staff_id")
    private Integer staffid;

    @Column(name="app_date")
    private LocalDate appdate;

    @Column(name="app_reason")
    private String appreason;

    // define constructors
    public Appointment(){

    }

    public Appointment(Integer patientid, Patient patient, Integer staffid, LocalDate appdate, String appreason) {
        this.patientid = patientid;
        this.patient = patient;
        this.staffid = staffid;
        this.appdate = appdate;
        this.appreason = appreason;
    }

    // define getter/setter

    public Integer getPatientid() {
        return patientid;
    }

    public void setPatientid(Integer patientid) {
        this.patientid = patientid;
    }

    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }

    public Integer getStaffid() {
        return staffid;
    }

    public void setStaffid(Integer staffid) {
        this.staffid = staffid;
    }

    public LocalDate getAppdate() {
        return appdate;
    }

    public void setAppdate(LocalDate appdate) {
        this.appdate = appdate;
    }

    public String getAppreason() {
        return appreason;
    }

    public void setAppreason(String appreason) {
        this.appreason = appreason;
    }

    // define toString method
    @Override
    public String toString() {
        return "Appointment{" +
                "patientid=" + patientid +
                ", patient=" + patient +
                ", staffid=" + staffid +
                ", appdate=" + appdate +
                ", appreason='" + appreason + '\'' +
                '}';
    }
}
