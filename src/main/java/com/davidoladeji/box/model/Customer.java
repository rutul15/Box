package com.davidoladeji.box.model;

import javax.persistence.*;

/**
 * Created by Daveola on 2/16/2015.
 */
@Entity
@Table(name = "customer")
public class Customer extends Account{

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;


    @Column(name = "postcode")
    private String postcode;

    @Column(name = "addresslineone")
    private String addresslineone;

    @Column(name = "addresslinetwo")
    private String addresslinetwo;

    @Column(name = "city")
    private String city;

    @Column(name = "country")
    private String country;



    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }


    public String getPostcode() {
        return postcode;
    }

    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }

    public String getAddresslineone() {
        return addresslineone;
    }

    public void setAddresslineone(String addresslineone) {
        this.addresslineone = addresslineone;
    }

    public String getAddresslinetwo() {
        return addresslinetwo;
    }

    public void setAddresslinetwo(String addresslinetwo) {
        this.addresslinetwo = addresslinetwo;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

}
