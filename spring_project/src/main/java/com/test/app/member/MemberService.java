package com.test.app.member;

public interface MemberService {
	public MemberVO selectOne(MemberVO vo);
		// ex) 로그인 기능
	public void insertMember(MemberVO vo);
	public void updateMember(MemberVO vo);
	
}
