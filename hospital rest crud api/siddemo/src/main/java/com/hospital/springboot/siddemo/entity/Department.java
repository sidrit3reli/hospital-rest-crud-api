package com.hospital.springboot.siddemo.entity;

import jakarta.persistence.*;
import jakarta.persistence.criteria.CriteriaBuilder;
import org.springframework.cglib.core.Local;

import java.time.LocalDate;
import java.util.List;

@Entity
@Table(name="department")
public class Department {

    // define fields
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="dep_id")
    private Integer depid;

    @OneToMany(cascade = CascadeType.ALL)
    @JoinColumn(name = "fk_dep_id", referencedColumnName = "dep_id")
    private List<Patient> patient;

    @OneToMany(cascade = CascadeType.ALL)
    @JoinColumn(name = "fk_dep_id", referencedColumnName = "dep_id")
    private List<Medical_staff> medical_staff;

    @OneToMany(cascade = CascadeType.ALL)
    @JoinColumn(name = "fk_dep_id", referencedColumnName = "dep_id")
    private List<Med_supplier> med_supplier;

    @Column(name="dep_name")
    private String depname;

    @Column(name="mgr_id")
    private Integer mgrid;

    @Column(name="mgr_start_date")
    private LocalDate mgrstartdate;

    // define constructors
    public Department(){

    }

    public Department(Integer depid, Patient patient, Medical_staff medical_staff, Med_supplier med_supplier, String depname, Integer mgrid, LocalDate mgrstartdate) {
        this.depid = depid;
        this.patient = (List<Patient>) patient;
        this.medical_staff = (List<Medical_staff>) medical_staff;
        this.med_supplier = (List<Med_supplier>) med_supplier;
        this.depname = depname;
        this.mgrid = mgrid;
        this.mgrstartdate = mgrstartdate;
    }

    // define getter/setter

    public Integer getDepid() {
        return depid;
    }

    public void setDepid(Integer depid) {
        this.depid = depid;
    }

    public Patient getPatient() {
        return (Patient) patient;
    }

    public void setPatient(Patient patient) {
        this.patient = (List<Patient>) patient;
    }

    public Medical_staff getMedical_staff() {
        return (Medical_staff) medical_staff;
    }

    public void setMedical_staff(Medical_staff medical_staff) {
        this.medical_staff = (List<Medical_staff>) medical_staff;
    }

    public Med_supplier getMed_supplier() {
        return (Med_supplier) med_supplier;
    }

    public void setMed_supplier(Med_supplier med_supplier) {
        this.med_supplier = (List<Med_supplier>) med_supplier;
    }

    public String getDepname() {
        return depname;
    }

    public void setDepname(String depname) {
        this.depname = depname;
    }

    public Integer getMgrid() {
        return mgrid;
    }

    public void setMgrid(Integer mgrid) {
        this.mgrid = mgrid;
    }

    public LocalDate getMgrstartdate() {
        return mgrstartdate;
    }

    public void setMgrstartdate(LocalDate mgrstartdate) {
        this.mgrstartdate = mgrstartdate;
    }

    // define toString
    @Override
    public String toString() {
        return "Department{" +
                "depid=" + depid +
                ", patient=" + patient +
                ", medical_staff=" + medical_staff +
                ", med_supplier=" + med_supplier +
                ", depname='" + depname + '\'' +
                ", mgrid=" + mgrid +
                ", mgrstartdate=" + mgrstartdate +
                '}';
    }
}
