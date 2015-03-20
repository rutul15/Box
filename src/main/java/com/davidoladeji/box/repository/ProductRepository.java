package com.davidoladeji.box.repository;

import com.davidoladeji.box.model.Product;
import org.hibernate.annotations.DynamicUpdate;
import org.springframework.data.jpa.repository.JpaRepository;

import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by Daveola on 2/16/2015.
 */

@Transactional
public interface ProductRepository extends JpaRepository<Product, Long> {

    List<Product> findByFeatured(boolean featured);
}
