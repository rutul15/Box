package com.davidoladeji.box.model;

import javax.persistence.*;

/**
 * Created by Daveola on 2/16/2015.
 */
@Entity
@IdClass(EmployeePK.class)
@Table(name = "employee")
public class Employee extends Account{

    @Id
    @Column(name = "id")
    private Long id;

    @Basic
    @Column(name = "staffid")
    private Long staffid;




    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }


    public Long getStaffid() {
        return staffid;
    }

    public void setStaffid(Long staffid) {
        this.staffid = staffid;
    }

}
