package com.davidoladeji.box.model;

import javax.persistence.*;

/**
 * Created by Daveola on 2/16/2015.
 */
@Entity
@IdClass(EmployeePK.class)
@Table(name = "employee")
public class Employee {

    @Id
    @Column(name = "id")
    private Long id;

    @Basic
    @Column(name = "staffid")
    private Long staffid;

    @Id
    @Column(name = "account_id")
    private int accountId;


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


    public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Employee employee = (Employee) o;

        if (accountId != employee.accountId) return false;
        if (id != employee.id) return false;
        if (staffid != null ? !staffid.equals(employee.staffid) : employee.staffid != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (staffid != null ? staffid.hashCode() : 0);
        result = 31 * result + accountId;
        return result;
    }
}
