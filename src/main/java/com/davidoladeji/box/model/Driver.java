package com.davidoladeji.box.model;

import javax.persistence.*;

/**
 * Created by Daveola on 2/16/2015.
 */
@Entity
@IdClass(DriverPK.class)
@Table(name = "driver")
public class Driver extends Account{

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

        Driver driver = (Driver) o;

        if (accountId != driver.accountId) return false;
        if (id != driver.id) return false;
        if (staffid != null ? !staffid.equals(driver.staffid) : driver.staffid != null) return false;

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
