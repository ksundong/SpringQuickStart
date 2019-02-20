package com.springbook.view.user;

import com.springbook.biz.user.Impl.UserDAO;
import com.springbook.biz.user.UserVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class LoginController {
	@RequestMapping("/login.do")
	public String login(UserVO vo, UserDAO userDAO) {
		if (userDAO.getUser(vo) != null) return "getBoardList.do";
		else return "login.jsp";
	}
}
