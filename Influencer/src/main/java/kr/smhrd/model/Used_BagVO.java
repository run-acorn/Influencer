package kr.smhrd.model;

import lombok.Data;

@Data
public class Used_BagVO {

	private int used_bag_no;
	   private int bag_no;
	   private byte[] used_img;
	   private int used_price;
	   private byte[] used_mall;
	   private String used_link;
}
