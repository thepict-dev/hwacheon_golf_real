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
package pict_admin.service;

public interface MemberService {

	// 관리자 > 회원 관리 > 회원 조회
	MemberVO selectMemberView(MemberVO vo) throws Exception;

	// 사용자 > 로그인 체크
	MemberVO selectMemberloginCheck(MemberVO memberVO) throws Exception;

}
