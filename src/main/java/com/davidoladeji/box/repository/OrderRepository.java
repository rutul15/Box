package com.davidoladeji.box.repository;

import com.davidoladeji.box.model.Orders;
import org.springframework.data.jpa.repository.JpaRepository;

import javax.transaction.Transactional;

/**
 * Created by Daveola on 2/16/2015.
 */

@Transactional
public interface OrderRepository extends JpaRepository<Orders, Long> {


}
