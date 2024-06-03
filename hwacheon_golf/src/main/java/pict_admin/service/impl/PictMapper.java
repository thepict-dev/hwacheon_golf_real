package pict_admin.service.impl;

import java.util.List;


import egovframework.rte.psl.dataaccess.mapper.Mapper;
import pict_admin.service.MemberVO;
import pict_admin.service.PictVO;

@Mapper("pictMapper")
public interface PictMapper {

	List<?> notice_list(PictVO pictVO) throws Exception;

	Integer notice_list_cnt(PictVO pictVO) throws Exception;

	PictVO notice_list_one(PictVO pictVO) throws Exception;

	void notice_rdcnt(PictVO pictVO) throws Exception;

	// 관리자 > 회원 관리 > 회원  조회
	MemberVO selectMemberView(MemberVO memberVO) throws Exception;
	
	// 사용자 > 로그인 체크
	MemberVO selectMemberloginCheck(MemberVO memberVO) throws Exception;

}
