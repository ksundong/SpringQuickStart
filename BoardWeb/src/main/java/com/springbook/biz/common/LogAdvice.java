package com.springbook.biz.common;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Service;

@Service
@Aspect // Aspect = Pointcut + Advice
public class LogAdvice {
	@Before("PointcutCommon.allPointcut()")
	public void printLog(JoinPoint jp) {
		String method = jp.getSignature().getName();
		Object[] args = jp.getArgs();
		
		for(int i = 0; i < args.length; i++) {
			System.out.println("[사전 처리] " + method + "() 메소드 ARGS 정보 : " + args[i].toString());
		}
	}
}
