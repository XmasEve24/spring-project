package com.test.app.member;


import java.util.List;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.test.app.board.BoardVO;

public class MemberClient {
	public static void main(String[] args) {
		AbstractApplicationContext factory=new GenericXmlApplicationContext("applicationContext.xml");
		
		MemberService ms = (MemberService)factory.getBean("memberService");
		
		// 로그인 화면에서 ID,PW를 입력하고 로그인 버튼을 누름
		MemberVO vo = new MemberVO();
		
		vo.setMid("ko");
		vo.setPassword("1520");
		MemberVO data = ms.selectOne(vo);
		if(data==null) {
			System.out.println("로그인 실패");
		}
		else {
			System.out.println(data.getRole() + data.getName() + "님, 반갑습니다.");
		}
		
		vo.setMid("pbi");
		vo.setName("bang");
		vo.setPassword("1520");
		vo.setRole("USER");
		try {
			ms.insertMember(vo);
		} catch (Exception e) {
			System.out.println("에러페이지");
		} 
		
		factory.close();
	}
}
