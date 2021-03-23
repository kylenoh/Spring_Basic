package nsc.ojt.board.ui;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import nsc.ojt.board.BoardService;



/**
 * Handles requests for the application home page.
 */
@Controller
public class BoardController {
	
	@Resource(name = "boardService")
	private BoardService boardService;

	@RequestMapping(value = "/BoardList")
	public ModelAndView BoardList(Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/board");
		List<Map<String, Object>> list = boardService.selectBoardList(commandMap);
		mv.addObject("list", list);
		return mv;
	}
}
