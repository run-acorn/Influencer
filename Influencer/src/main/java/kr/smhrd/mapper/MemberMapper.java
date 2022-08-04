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

	public void memberInsert(MemberVO mvo);

	public MemberVO memberLogin(MemberVO mvo);

	public void changePw(MemberVO mvo);

	public void changeNick(MemberVO mvo);

	public void deleteMember(MemberVO mvo);


}
