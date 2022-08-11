package kr.smhrd.model;

import lombok.Data;

@Data
public class New_BagVO {
	
	private int new_bag_no;
	private int bag_no;
	private byte[] new_img;
	private int new_price;
	private String new_link;

}
