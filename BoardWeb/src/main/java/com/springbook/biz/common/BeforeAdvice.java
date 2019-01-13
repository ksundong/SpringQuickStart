package com.springbook.biz.common;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Service;

@Service
@Aspect
public class BeforeAdvice {
	@Before("PointcutCommon.allPointcut()")
	public void beforeLog() {
		System.out.println("[사전 처리] 비즈니스 로직 수행 전 동작");
	}
}
