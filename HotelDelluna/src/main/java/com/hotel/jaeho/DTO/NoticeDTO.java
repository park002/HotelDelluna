package com.hotel.jaeho.DTO;

import java.sql.Timestamp;

//create table `notice` (

//`b_no` int(10) not null auto_increment,
//`b_title`varchar(200) not null,
//`b_detail` text,
//`b_writer` varchar(7) not null,
//`b_date` timestamp,
//`b_count` int(11) default '0',
// PRIMARY KEY (`b_no`)
//);

public class NoticeDTO {
	private int b_no; //게시글번호
	private String b_title; //게시글 제목
	private String b_detail;//게시글 내용
	private String b_writer; //게시글 작성자
	private Timestamp b_date; //게시글 작성일
	private int b_count; //조회수

	public int getB_no() {
		return b_no;
	}

	public void setB_no(int b_no) {
		this.b_no = b_no;
	}

	public String getB_title() {
		return b_title;
	}

	public void setB_title(String b_title) {
		this.b_title = b_title;
	}

	public String getB_detail() {
		return b_detail;
	}

	public void setB_detail(String b_detail) {
		this.b_detail = b_detail;
	}

	public String getB_writer() {
		return b_writer;
	}

	public void setB_writer(String b_writer) {
		this.b_writer = b_writer;
	}

	public Timestamp getB_date() {
		return b_date;
	}

	public void setB_date(Timestamp b_date) {
		this.b_date = b_date;
	}

	public int getB_count() {
		return b_count;
	}

	public void setB_count(int b_count) {
		this.b_count = b_count;
	}

	@Override
	public String toString() {
		return "NoticeDTO [b_no=" + b_no + ", b_title=" + b_title + ", b_detail=" + b_detail + ", b_writer=" + b_writer
				+ ", b_date=" + b_date + ", b_count=" + b_count + "]";
	}

}