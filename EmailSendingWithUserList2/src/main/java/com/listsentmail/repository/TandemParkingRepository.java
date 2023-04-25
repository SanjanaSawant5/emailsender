package com.listsentmail.repository;

import org.springframework.data.jpa.repository.JpaRepository;




import org.springframework.stereotype.Repository;

import com.listsentmail.models.TandemParking;

@Repository
public interface TandemParkingRepository extends JpaRepository<TandemParking, Integer> {

}
