package kr.smhrd.model;

import lombok.Data;

@Data
public class Review {
	
	private int review_no;
	private String bag_no;
	private String review_img;
	private String review_mall;
	private int review_grade;
	private String review_date;
	private String review_id;
	private String review_text;

}
