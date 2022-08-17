package kr.smhrd.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.smhrd.model.BagVO;
import kr.smhrd.model.BoardVO;
import kr.smhrd.model.MemberVO;
import kr.smhrd.model.New_BagVO;
import kr.smhrd.model.Used_BagVO;

public interface MemberMapper {

	public void memberInsert(MemberVO vo);

	public MemberVO memberLogin(MemberVO vo);

	public void changePw(MemberVO vo);

	public void changeNick(MemberVO vo);

	public void deleteMember(MemberVO vo);

	public int idCheck(String id);

	public int nickCheck(String nick);

	public MemberVO memberInsertCheck(MemberVO vo);

	

}
