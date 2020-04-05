package com.hotel.jaeho.DAO;

import com.hotel.jaeho.DTO.ReservationDTO;

public interface ReservationDAO {
	public void reservation_number_people(ReservationDTO dto);

	public int RoomPrice(ReservationDTO dto);

	public void reservationInsert(ReservationDTO dto);

	public int DuplicateFind(ReservationDTO dto);

	public String PayCheck(String m_id);

	public void PayCheckUpdate(String number);
    
	public void ReservationDelete();
	
	public ReservationDTO ReservationSelect(String m_id);
	
	public String SearchPW(String m_id);
	
	
}
