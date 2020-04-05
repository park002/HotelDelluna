package com.hotel.jaeho.DTO;

/*CREATE TABLE `reservation` (
		  `RESERVATION_NUMBER` varchar(40) NOT NULL,
		  `m_id` varchar(30) NOT NULL,
		  `RESERVATION_DATE_IN` date DEFAULT NULL,
		  `RESERVATION_DATE_OUT` date DEFAULT NULL,
		  ` CONFIRMATION_PAYMENT` tinyint(1) DEFAULT NULL,
		  `price` int(50) DEFAULT NULL,
		  PRIMARY KEY (`RESERVATION_NUMBER`),
		  KEY `FK_LOGIN_TO_RESERVATION2` (`m_id`),
		  CONSTRAINT `FK_LOGIN_TO_RESERVATION2` FOREIGN KEY (`m_id`) REFERENCES `member` (`m_id`),
		  CONSTRAINT `FK_RESERVATION_NUMBER_PEOPLE_TO_RESERVATION` FOREIGN KEY (`RESERVATION_NUMBER`) REFERENCES `reservation_number_people` (`RESERVATION_NUMBER`)
		)
		 ENGINE=InnoDB DEFAULT CHARSET=utf8;*/

public class ReservationDTO {
	private String reservation_number;// PK예약번호	
	private String m_id;// 회원 ID
	private String reservation_data_in;// 체크인
	private String reservation_data_out;// 체크아웃
	private String room_type;// 룸 타입
	private boolean confirmation_payment;
	private int adult;// 성인
	private int child;// 어린이
	private int price;// 방 가격

	

	public boolean isConfirmation_payment() {
		return confirmation_payment;
	}

	public void setConfirmation_payment(boolean confirmation_payment) {
		this.confirmation_payment = confirmation_payment;
	}

	public String getReservation_number() {
		return reservation_number;
	}

	public void setReservation_number(String reservation_number) {
		this.reservation_number = reservation_number;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getReservation_data_in() {
		return reservation_data_in;
	}

	public void setReservation_data_in(String reservation_data_in) {
		this.reservation_data_in = reservation_data_in;
	}

	public String getReservation_data_out() {
		return reservation_data_out;
	}

	public void setReservation_data_out(String reservation_data_out) {
		this.reservation_data_out = reservation_data_out;
	}

	public String getRoom_type() {
		return room_type;
	}

	public void setRoom_type(String room_type) {
		this.room_type = room_type;
	}

	public int getAdult() {
		return adult;
	}

	public void setAdult(int adult) {
		this.adult = adult;
	}

	public int getChild() {
		return child;
	}

	public void setChild(int child) {
		this.child = child;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "ReservationDTO [reservation_number=" + reservation_number + ", m_id=" + m_id + ", reservation_data_in="
				+ reservation_data_in + ", reservation_data_out=" + reservation_data_out + ", room_type=" + room_type
				+ ", adult=" + adult + ", child=" + child + ", price=" + price + "]";
	}

}
