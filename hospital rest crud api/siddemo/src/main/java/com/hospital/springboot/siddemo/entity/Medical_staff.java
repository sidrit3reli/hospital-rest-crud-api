package com.hospital.springboot.siddemo.entity;

import jakarta.persistence.*;

import java.time.LocalDate;
import java.util.List;

@Entity
@Table(name="medical_staff")
public class Medical_staff {

    // define fields
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    @Column(name="staff_id")
    private Integer staffid;
    @OneToMany(cascade = CascadeType.ALL)
    @JoinColumn(name = "fk_staff_id", referencedColumnName = "staff_id")
    private List<Appointment> appointment;

    @OneToMany(cascade = CascadeType.ALL)
    @JoinColumn(name = "fk_staff_id", referencedColumnName = "staff_id")
    private List<Patient> patient;


    @Column(name="staff_name")
    private String staffname;

    @Column(name="staff_surname")
    private String staffsurname;

    @Column(name="staff_age")
    private LocalDate staffage;

    @Column(name="staff_sex")
    private String staffsex;

    @Column(name="staff_role")
    private String staffrole;

    @Column(name="staff_email")
    private String staffemail;

    @Column(name="dep_id")
    private String depid;

    // define constructors
    public Medical_staff(){

    }

    public Medical_staff(Patient patient, Appointment appointment, String staffname, String staffsurname, LocalDate staffage, String staffsex, String staffrole, String staffemail, String depid, Department department) {
        this.patient = (List<Patient>) patient;
        this.appointment = (List<Appointment>) appointment;
        this.staffname = staffname;
        this.staffsurname = staffsurname;
        this.staffage = staffage;
        this.staffsex = staffsex;
        this.staffrole = staffrole;
        this.staffemail = staffemail;
        this.depid = depid;
    }

    // define getter-setter

    public Integer getStaffid() {
        return staffid;
    }

    public void setStaffid(Integer staffid) {
        this.staffid = staffid;
    }

    public Patient getPatient() {
        return (Patient) patient;
    }

    public void setPatient(Patient patient) {
        this.patient = (List<Patient>) patient;
    }

    public Appointment getAppointment() {
        return (Appointment) appointment;
    }

    public void setAppointment(Appointment appointment) {
        this.appointment = (List<Appointment>) appointment;
    }

    public String getStaffname() {
        return staffname;
    }

    public void setStaffname(String staffname) {
        this.staffname = staffname;
    }

    public String getStaffsurname() {
        return staffsurname;
    }

    public void setStaffsurname(String staffsurname) {
        this.staffsurname = staffsurname;
    }

    public LocalDate getStaffage() {
        return staffage;
    }

    public void setStaffage(LocalDate staffage) {
        this.staffage = staffage;
    }

    public String getStaffsex() {
        return staffsex;
    }

    public void setStaffsex(String staffsex) {
        this.staffsex = staffsex;
    }

    public String getStaffrole() {
        return staffrole;
    }

    public void setStaffrole(String staffrole) {
        this.staffrole = staffrole;
    }

    public String getStaffemail() {
        return staffemail;
    }

    public void setStaffemail(String staffemail) {
        this.staffemail = staffemail;
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
        return "Medical_staff{" +
                "staffid=" + staffid +
                ", patient=" + patient +
                ", appointment=" + appointment +
                ", staffname='" + staffname + '\'' +
                ", staffsurname='" + staffsurname + '\'' +
                ", staffage=" + staffage +
                ", staffsex='" + staffsex + '\'' +
                ", staffrole='" + staffrole + '\'' +
                ", staffemail='" + staffemail + '\'' +
                ", depid='" + depid + '\'' +
                '}';
    }
}
