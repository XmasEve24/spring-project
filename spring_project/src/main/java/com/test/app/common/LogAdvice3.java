package com.test.app.common;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Service;

@Service
@Aspect // -> 스프링컨테이너가 실행시간에 위빙처리함
public class LogAdvice3 { // 횡단관심1개 + 포인트컷2개 선언 => 불리하네? => 포인트컷 클래스 생성(예정)
	
	
	@Before("PointcutCommon.aPointcut()")
	public void printLog3() {
		System.out.println("횡단관심");
	} // 애스팩트 설정
}
