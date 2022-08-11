package kr.smhrd.model;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class BoardVO {

	private int board_no;
	private String nick;
	private String board_content;
	private String board_head;
	private String board_title;
	private String board_date;
	private String board_uploadPath;
	private String board_fileName;

}