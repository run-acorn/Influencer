package kr.smhrd.model;

import lombok.Data;

@Data
public class BoardVO {

	private int board_no;
	private String nick;
	private String board_content;
	private String board_img;
	private String board_head;
	private String board_title;
}
