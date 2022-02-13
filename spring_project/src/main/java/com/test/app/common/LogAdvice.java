package com.test.app.common;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Service;

@Service // 1. @ 스캔범위에 추가
@Aspect // 4. 애스팩트 설정 -> 실시간 위빙처리
public class LogAdvice {
	
	// 2. 포인트컷 설정
	@Pointcut("execution(* com.test.app..*Impl.select*(..))")
	public void bPointcut() {}
	
	// 3. 어드바이스 설정 + 동작시점
	@Before("bPointcut()")
	public void printLog(JoinPoint jp) {
		System.out.println("B 동작시점 횡단관심수행중...");
		String coreMethod = jp.getSignature().getName(); // 
		System.out.println("처리중인 비즈니스 메서드명: " + coreMethod);
		Object[] args=jp.getArgs();
		System.out.println("args�뱾: ");
		for(Object v:args) {
			System.out.println(v+" ");
		}
		System.out.println();
	}
}
