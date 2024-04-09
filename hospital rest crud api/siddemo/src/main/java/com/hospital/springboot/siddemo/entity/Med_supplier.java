package com.hospital.springboot.siddemo.entity;

import jakarta.persistence.*;
import org.springframework.beans.factory.annotation.Value;

@Entity
@Table(name="med_supplier")
public class Med_supplier {

    // define fields
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="dep_id")
    private Integer depid;

    @Column(name="supplier_name")
    private String suppliername;

    @Column(name="supply_type")
    private String supplytype;

    @Column(name="supply_cost")
    private Integer supplycost;

    // define constructors
    public Med_supplier(){

    }

    public Med_supplier(Integer depid, String suppliername, String supplytype, Integer supplycost) {
        this.depid = depid;
        this.suppliername = suppliername;
        this.supplytype = supplytype;
        this.supplycost = supplycost;
    }

    // define getter/setter

    public Integer getDepid() {
        return depid;
    }

    public void setDepid(Integer depid) {
        this.depid = depid;
    }

    public String getSuppliername() {
        return suppliername;
    }

    public void setSuppliername(String suppliername) {
        this.suppliername = suppliername;
    }

    public String getSupplytype() {
        return supplytype;
    }

    public void setSupplytype(String supplytype) {
        this.supplytype = supplytype;
    }

    public Integer getSupplycost() {
        return supplycost;
    }

    public void setSupplycost(Integer supplycost) {
        this.supplycost = supplycost;
    }

    // define toString

    @Override
    public String toString() {
        return "Med_supplier{" +
                "depid='" + depid + '\'' +
                ", suppliername='" + suppliername + '\'' +
                ", supplytyoe='" + supplytype + '\'' +
                ", supplycost=" + supplycost +
                '}';
    }
}
