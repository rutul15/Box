package com.davidoladeji.box.model;


import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * Created by Daveola on 3/20/2015.
 */

@XmlRootElement(name = "Towns")
@JsonIgnoreProperties(ignoreUnknown = true)
public class Towns {


    @XmlElement (name = "town")
    private Town town;




    public Towns() {
    }


}
