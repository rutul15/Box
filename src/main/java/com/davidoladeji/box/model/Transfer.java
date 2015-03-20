package com.davidoladeji.box.model;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;

/**
 * Created by Daveola on 2/16/2015.
 */
@Entity
public class Transfer {

    @Id
    @Column(name = "id")
    private Long id;

    @Basic
    @Column(name = "transfer_timestamp")
    private Timestamp transferTimestamp;

    @Basic
    @Column(name = "destination_warehouse")
    private int destinationWarehouse;

    @Basic
    @Column(name = "departure_warehouse")
    private int departureWarehouse;

    @Basic
    @Column(name = "mileage")
    private Long mileage;

    @Basic
    @Column(name = "truck_id")
    private int truckId;

    @Basic
    @Column(name = "transfer_status_id")
    private int transferStatusId;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }


    public Timestamp getTransferTimestamp() {
        return transferTimestamp;
    }

    public void setTransferTimestamp(Timestamp transferTimestamp) {
        this.transferTimestamp = transferTimestamp;
    }


    public int getDestinationWarehouse() {
        return destinationWarehouse;
    }

    public void setDestinationWarehouse(int destinationWarehouse) {
        this.destinationWarehouse = destinationWarehouse;
    }


    public int getDepartureWarehouse() {
        return departureWarehouse;
    }

    public void setDepartureWarehouse(int departureWarehouse) {
        this.departureWarehouse = departureWarehouse;
    }


    public Long getMileage() {
        return mileage;
    }

    public void setMileage(Long mileage) {
        this.mileage = mileage;
    }


    public int getTruckId() {
        return truckId;
    }

    public void setTruckId(int truckId) {
        this.truckId = truckId;
    }


    public int getTransferStatusId() {
        return transferStatusId;
    }

    public void setTransferStatusId(int transferStatusId) {
        this.transferStatusId = transferStatusId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Transfer transfer = (Transfer) o;

        if (departureWarehouse != transfer.departureWarehouse) return false;
        if (destinationWarehouse != transfer.destinationWarehouse) return false;
        if (transferStatusId != transfer.transferStatusId) return false;
        if (truckId != transfer.truckId) return false;
        if (id != null ? !id.equals(transfer.id) : transfer.id != null) return false;
        if (mileage != null ? !mileage.equals(transfer.mileage) : transfer.mileage != null) return false;
        if (transferTimestamp != null ? !transferTimestamp.equals(transfer.transferTimestamp) : transfer.transferTimestamp != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (transferTimestamp != null ? transferTimestamp.hashCode() : 0);
        result = 31 * result + destinationWarehouse;
        result = 31 * result + departureWarehouse;
        result = 31 * result + (mileage != null ? mileage.hashCode() : 0);
        result = 31 * result + truckId;
        result = 31 * result + transferStatusId;
        return result;
    }
}
