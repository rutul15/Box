package com.davidoladeji.box.model;

import javax.persistence.*;

/**
 * Created by Daveola on 2/16/2015.
 */
@Entity
public class Warehouse {

    @Id
    @Column(name = "id")
    private Long id;

    @Basic
    @Column(name = "codename")
    private String codename;

    @Basic
    @Column(name = "enabled")
    private boolean enabled;

    @OneToOne
    Location location;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }


    public String getCodename() {
        return codename;
    }

    public void setCodename(String codename) {
        this.codename = codename;
    }


    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public Location getLocation() {
        return location;
    }

    public void setLocation(Location location) {
        this.location = location;
    }

}
