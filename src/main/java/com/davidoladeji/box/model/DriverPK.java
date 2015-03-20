package com.davidoladeji.box.model;

import javax.persistence.Column;
import javax.persistence.Id;
import java.io.Serializable;

/**
 * Created by Daveola on 2/16/2015.
 */
public class DriverPK implements Serializable {

    @Id
    @Column(name = "id")
    private Long id;

    @Id
    @Column(name = "account_id")
    private int accountId;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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

        DriverPK driverPK = (DriverPK) o;

        if (accountId != driverPK.accountId) return false;
        if (id != driverPK.id) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + accountId;
        return result;
    }
}
