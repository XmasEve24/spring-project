package com.test.app.common;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Service;

@Service
@Aspect
public class AfterThrowingAdvice {
	
	@AfterThrowing(pointcut="PointcutCommon.aPointcut()", throwing="excep")
	public void exceptionLog(JoinPoint jp, Exception excep) { // 諛붿씤�뱶蹂��닔
		String coreMethod = jp.getSignature().getName();
		System.out.println("" +coreMethod+"");
		System.out.println(" " + excep.getMessage());
		
		if(excep instanceof IllegalArgumentException) {
			System.out.println(".");
		}
		else if(excep instanceof NullPointerException) {
			System.out.println(".");
		}
		else {
			System.out.println(".");
		}
	}
}
