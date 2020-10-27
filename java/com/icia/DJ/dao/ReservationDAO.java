package com.icia.DJ.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.DJ.dto.ReservationDTO;

@Repository
public class ReservationDAO {
	@Autowired
	private SqlSessionTemplate sql;
	


	

	
	public int reservationInsert(ReservationDTO reservation) {

		return sql.insert("Reservation.reservationI"
				+ "nsert",reservation);
	}

	public ReservationDTO reservationSelect(ReservationDTO reservation) {
		return sql.selectOne("Reservation.reservationSelect",reservation);
	}

	
	
	
	  public int reservationUpdate(String rvphone) { 
	  return sql.update("Reservation.reservationUpdate",rvphone); 
	}

	
	 

}
