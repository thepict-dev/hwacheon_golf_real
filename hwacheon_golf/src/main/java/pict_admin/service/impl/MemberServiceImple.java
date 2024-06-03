/*
 * Copyright 2008-2009 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package pict_admin.service.impl;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import pict_admin.service.MemberService;
import pict_admin.service.MemberVO;
import pict_admin.service.EgovFileScrty;

@Service("memberService")
public class MemberServiceImple extends EgovAbstractServiceImpl implements MemberService {

	@Resource(name="pictMapper")
	private PictMapper pictMapper;
    



	// 관리자 > 회원 관리 > 회원  조회
    @Override
    public MemberVO selectMemberView(MemberVO vo) throws Exception{
    	return pictMapper.selectMemberView(vo);
    }


	// 사용자 > 로그인 체크
	@Override
	public MemberVO selectMemberloginCheck(MemberVO memberVO) throws Exception {
		String enpassword = EgovFileScrty.encryptPassword(memberVO.getMemberPw(), memberVO.getMemberId());
		memberVO.setMemberPw(enpassword);
		return pictMapper.selectMemberloginCheck(memberVO);
	}

}
