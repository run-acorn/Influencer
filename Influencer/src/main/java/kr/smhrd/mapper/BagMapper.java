package kr.smhrd.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.smhrd.model.BagVO;
import kr.smhrd.model.BoardVO;
import kr.smhrd.model.Criteria;
import kr.smhrd.model.New_BagVO;
import kr.smhrd.model.Used_BagVO;

public interface BagMapper {

	public void view();

	public List<BagVO> bagSearch(String bag_brand);

	public Map upload(MultipartHttpServletRequest multipart, String path);

	public List<New_BagVO> new_bag_detail(int bag_no);

	public List<Used_BagVO> used_bag_detail();

	public New_BagVO selectimage(int bag_no);

	public int search_answer(String bag_name_new);


}
