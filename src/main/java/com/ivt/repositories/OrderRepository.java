/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ivt.repositories;

import com.ivt.entities.OrderEntity;
import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderRepository extends CrudRepository<OrderEntity, Integer> {

//    code của hiệp
<<<<<<< HEAD
    @Query(value = "SELECT * FROM project_final.orders where orderStatus like 'PROCESSING'", nativeQuery = true)
    List<OrderEntity> getAllOrderByStatus();

    @Query(value = "select count(id) from project_final.orders where orderStatus like 'PROCESSING'", nativeQuery = true)
    int counOrderEntityProcessing();

//    @Query(value = "select o from OrderEntity o where o.orderDate between ?1 and ?2 and o.orderStatus = 'PROCESSING'")
//    List<OrderEntity> searchByDate(String fromDate, String toDate);
    @Query(value = "SELECT * FROM project_final.orders where orderDate between ?1 and ?2 "
            + "and orderStatus = 'PROCESSING'", nativeQuery = true)
    List<OrderEntity> searchByDate(String fromDate, String toDate);
=======
    @Query(value = "select o from OrderEntity o where o.orderStatus = ?1")
    List<OrderEntity> getAllOrderByStatus(OrderStatus s);
    
    
    @Query(value = "SELECT * FROM orders o join customers c on o.customer_id = c.id where c.account_id = ?1",nativeQuery = true)
    List<OrderEntity> getAllOrderByAccountId(int accountId);
>>>>>>> 6b769d66f7d064ee421a0f8e4e5033b74bd5347d
}
