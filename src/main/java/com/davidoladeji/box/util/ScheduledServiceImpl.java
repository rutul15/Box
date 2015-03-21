package com.davidoladeji.box.util;


import com.davidoladeji.box.model.Location;
import com.davidoladeji.box.model.Towns;
import org.apache.log4j.Logger;
import org.springframework.web.client.RestTemplate;

/**
 * Created by Daveola on 3/3/2015.
 */



public class ScheduledServiceImpl implements ScheduledService {

    protected static Logger logger = Logger.getLogger("service");

    public void performService() {
        String threadName = Thread.currentThread().getName();
        logger.debug("   " + threadName + " cron service performing important stuff..");


        RestTemplate restTemplate = new RestTemplate();
        String url="http://localhost:9000/alltowns";
        Towns towns = restTemplate.getForObject(url, Towns.class);
        System.out.print("............................");
        System.out.print("............................");
        System.out.print("............................");
        System.out.print("............................");
        System.out.print("............................");
        System.out.print("............................");
        System.out.print("............................");
        System.out.print(towns.toString());

    }




}
