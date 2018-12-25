package com.springbook.biz.common;

import org.aspectj.lang.JoinPoint;

public class LogAdvice {
	public void printLog(JoinPoint jp) {
		Object[] args = jp.getArgs();
		for(int i = 0; i < args.length; i++) {
			System.out.println(args.toString());
		}
		System.out.println("[공통 로그] 비스니스 로직 수행 전 동작");
	}
}
