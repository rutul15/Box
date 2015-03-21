package com.davidoladeji.box.model;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * Created by Daveola on 2/16/2015.
 */

@XmlRootElement(name = "Town")
public class Town {

    @XmlElement
    private Long id;

    @XmlElement
    private String name;


    public Town() {
    }
}
