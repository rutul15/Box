package com.davidoladeji.box.model;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by Daveola on 2/16/2015.
 */
@Entity
@Table(name = "account")
public class Account {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;

    
    @Column(name = "role_id")
    private int roleId;

    
    @Column(name = "firstname")
    private String firstname;

    
    @Column(name = "surname")
    private String surname;

    
    @Column(name = "username")
    private String username;

    
    @Column(name = "email")
    private String email;

    
    @Column(name = "password")
    private String password;

    
    @Column(name = "gender")
    private int gender;

    
    @Column(name = "dob")
    private Date dob;

    
    @Column(name = "mobile")
    private String mobile;

    @Column (name = "enabled")
    private boolean enabled;


    public Account() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }


    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }


    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }


    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }


    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }


    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }


    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }



    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

}
