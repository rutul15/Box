package com.davidoladeji.box.model;


import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import java.util.List;

/**
 * Created by Daveola on 3/20/2015.
 */

@XmlRootElement(name = "Distances")
@JsonIgnoreProperties(ignoreUnknown = true)
public class Distances {


    private List<Distance> distances;

    @XmlElement
    private String distance;

    @XmlElement
    private String townone;

    @XmlElement
    private String towntwo;

    @XmlElement
    private String distanceInMiles;


    public Distances() {
    }


}
