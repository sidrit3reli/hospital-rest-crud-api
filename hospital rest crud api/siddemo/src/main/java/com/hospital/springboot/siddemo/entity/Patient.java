package com.hospital.springboot.siddemo.entity;

import jakarta.persistence.*;

import java.time.LocalDate;

@Entity
@Table(name="patient")
public class Patient {

    // define fields
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="patient_id")
    private Integer patientid;
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "patient_id")
    private Appointment appointment;


    @Column(name="patient_name")
    private String patientname;

    @Column(name="patient_surname")
    private String patientsurname;

    @Column(name="patient_condition")
    private String patientcondition;

    @Column(name="patient_age")
    private LocalDate patientage;

    @Column(name="patient_sex")
    private String patientsex;

    @Column(name="patient_email")
    private String patientemail;

    @Column(name="staff_id")
    private String staffid;

    @Column(name="dep_id")
    private String depid;

    // define constructors
    public Patient(){

    }

    public Patient(Appointment appointment, String patientname, String patientsurname, String patientcondition, LocalDate patientage, String patientsex, String patientemail, String staffid, String depid) {
        this.appointment = appointment;
        this.patientname = patientname;
        this.patientsurname = patientsurname;
        this.patientcondition = patientcondition;
        this.patientage = patientage;
        this.patientsex = patientsex;
        this.patientemail = patientemail;
        this.staffid = staffid;
        this.depid = depid;
    }

    // define getter/setter

    public Integer getPatientid() {
        return patientid;
    }

    public void setPatientid(Integer patientid) {
        this.patientid = patientid;
    }

    public Appointment getAppointment() {
        return appointment;
    }

    public void setAppointment(Appointment appointment) {
        this.appointment = appointment;
    }

    public String getPatientname() {
        return patientname;
    }

    public void setPatientname(String patientname) {
        this.patientname = patientname;
    }

    public String getPatientsurname() {
        return patientsurname;
    }

    public void setPatientsurname(String patientsurname) {
        this.patientsurname = patientsurname;
    }

    public String getPatientcondition() {
        return patientcondition;
    }

    public void setPatientcondition(String patientcondition) {
        this.patientcondition = patientcondition;
    }

    public LocalDate getPatientage() {
        return patientage;
    }

    public void setPatientage(LocalDate patientage) {
        this.patientage = patientage;
    }

    public String getPatientsex() {
        return patientsex;
    }

    public void setPatientsex(String patientsex) {
        this.patientsex = patientsex;
    }

    public String getPatientemail() {
        return patientemail;
    }

    public void setPatientemail(String patientemail) {
        this.patientemail = patientemail;
    }

    public String getStaffid() {
        return staffid;
    }

    public void setStaffid(String staffid) {
        this.staffid = staffid;
    }

    public String getDepid() {
        return depid;
    }

    public void setDepid(String depid) {
        this.depid = depid;
    }

    // define toString

    @Override
    public String toString() {
        return "Patient{" +
                "patientid=" + patientid +
                ", appointment=" + appointment +
                ", patientname='" + patientname + '\'' +
                ", patientsurname='" + patientsurname + '\'' +
                ", patientcondition='" + patientcondition + '\'' +
                ", patientage=" + patientage +
                ", patientsex='" + patientsex + '\'' +
                ", patientemail='" + patientemail + '\'' +
                ", staffid='" + staffid + '\'' +
                ", depid='" + depid + '\'' +
                '}';
    }
}
