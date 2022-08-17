package kr.smhrd.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.smhrd.model.BagVO;
import kr.smhrd.model.BoardVO;
import kr.smhrd.model.Criteria;
import kr.smhrd.model.New_BagVO;
import kr.smhrd.model.Review;
import kr.smhrd.model.Used_BagVO;

public interface BagMapper {

	public void view();

	public List<BagVO> bagSearch(String bag_brand);

	public Map upload(MultipartHttpServletRequest multipart, String path);

	public New_BagVO selectimage(int bag_no);
	
	// 에이젝스로 바꿈
	public List<New_BagVO> new_bag_detail(int bag_no);
				// 에이젝스로 바꿈
	public List<Used_BagVO> used_bag_detail(int bag_no);

	// 리뷰
	public List<Review> review(int bag_no);
	//리뷰이미지
	public Review selectreviewimage(int bag_no);
	// 상세 메인 이미지
	public BagVO selectmainimage(int bag_no);
	// 상세 몰 이미지
	public New_BagVO selectmallimage(int new_bag_no);
	// 상세 메인 이름
	public List<BagVO> bagname(int bag_no);
	// 상세 중고 이미지
	public Used_BagVO selectusedimage(int used_bag_no);
	// 상세 중고 몰 이미지
	public Used_BagVO selectusdemallimage(int used_bag_no);
	// 리뷰 이미지
	public BagVO selectallimage(int bag_no);

	public int search_answer(String bag_name_new);

	public List<BagVO> bagAllList();


}
