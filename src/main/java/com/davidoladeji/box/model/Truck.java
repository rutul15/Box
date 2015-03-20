package com.davidoladeji.box.model;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * Created by Daveola on 2/16/2015.
 */
@Entity
public class Truck {

    @Id
    @Column(name = "id")
    private Long id;

    @Basic
    @Column(name = "driver_id")
    private int driverId;

    @Basic
    @Column(name = "location_id")
    private int locationId;

    @Basic
    @Column(name = "enabled")
    private boolean enabled;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }


    public int getDriverId() {
        return driverId;
    }

    public void setDriverId(int driverId) {
        this.driverId = driverId;
    }


    public int getLocationId() {
        return locationId;
    }

    public void setLocationId(int locationId) {
        this.locationId = locationId;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Truck truck = (Truck) o;

        if (driverId != truck.driverId) return false;
        if (enabled != truck.enabled) return false;
        if (locationId != truck.locationId) return false;
        if (id != null ? !id.equals(truck.id) : truck.id != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + driverId;
        result = 31 * result + locationId;
        result = 31 * result + (enabled ? 1 : 0);
        return result;
    }
}
