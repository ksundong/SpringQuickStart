package polymorphism;

import org.springframework.stereotype.Component;

@Component
public interface TV {
	public void powerOn();
	public void powerOff();
	public void volumeUp();
	public void volumeDown();
}
