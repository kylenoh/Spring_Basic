package nsc.ojt.board.ui;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.inject.Inject;

import org.apache.ibatis.logging.Log;
import org.apache.ibatis.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import nsc.ojt.board.BoardService;
import nsc.ojt.common.ui.CommandMap;

/**
 * Handles requests for the application home page.
 */
@Controller
public class BoardController {
	protected Log logger = LogFactory.getLog(BoardController.class);

	@Inject
	private BoardService boardService;

	@RequestMapping(value = "/boardList")
	public ModelAndView BoardList(Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/boardList");
		List<Map<String, Object>> list = boardService.selectBoardList(commandMap);
		mv.addObject("list", list);
		return mv;
	}

	@RequestMapping(value = "/boardRegist")
	public ModelAndView BoardRegist(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/boardRegist");

		return mv;
	}
	
	@RequestMapping(value = "/Regist")
	public ModelAndView openBoardWrite(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/boardList");

		return mv;
	}

	@RequestMapping(value = "/testMapArgumentResolver")
	public ModelAndView testMapArgumentResolver(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("");
		if (commandMap.isEmpty() == false) {
			Iterator<Entry<String, Object>> iterator = commandMap.getMap().entrySet().iterator();
			Entry<String, Object> entry = null;
			while (iterator.hasNext()) {
				entry = iterator.next();
				logger.debug("key : " + entry.getKey() + ", value : " + entry.getValue());
			}
		}
		return mv;
	}

}
