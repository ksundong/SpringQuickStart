package com.springbook.view.board;

import com.springbook.biz.board.BoardVO;
import com.springbook.biz.board.Impl.BoardDAO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class GetBoardListController {
	@RequestMapping("/getBoardList.do")
	public ModelAndView getBoardList(BoardVO vo, BoardDAO boardDAO, ModelAndView mav) {
		mav.addObject("boardList", boardDAO.getBoardList(vo));	// Model 정보 저장
		mav.setViewName("getBoardList");	// View 정보 저장
		return mav;
	}
}
