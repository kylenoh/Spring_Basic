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

	/* 쿼리가 포함된 Controller */
	@RequestMapping(value = "/boardList")
	public ModelAndView BoardList(Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/boardList");
		//List<Map<String, Object>> list = boardService.selectBoardList(commandMap);
		//mv.addObject("list", list);
		return mv;
	}
	
	@RequestMapping(value="/selectBoardList")
	public ModelAndView selectBoardList(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("jsonView");
		
		List<Map<String,Object>> list = boardService.selectBoardList(commandMap.getMap());
		mv.addObject("list", list);
		if(list.size() > 0){
			mv.addObject("TOTAL", list.get(0).get("TOTAL_COUNT"));
		}
		else{
			mv.addObject("TOTAL", 0);
		}
		
		return mv;
	}


	@RequestMapping(value = "/boardRegist")
	public ModelAndView boardRegist(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/boardList");
		boardService.boardRegist(commandMap.getMap());
		return mv;
	}

	@RequestMapping(value = "/boardDetail")
	public ModelAndView boardDetail(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/boardDetail");
		Map<String, Object> map = boardService.selectBoardDetail(commandMap.getMap());
		mv.addObject("map", map);
		return mv;
	}

	@RequestMapping(value = "/boardUpdate")
	public ModelAndView boardUpdate(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/boardUpdate");
		Map<String, Object> map = boardService.selectBoardDetail(commandMap.getMap());
		mv.addObject("map", map);
		return mv;
	}

	@RequestMapping(value = "/updateBoard")
	public ModelAndView updateBoard(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/boardDetail");
		boardService.updateBoard(commandMap.getMap());
		mv.addObject("B_NUM", commandMap.get("B_NUM"));
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

	@RequestMapping(value = "/deleteBoard")
	public ModelAndView deleteBoard(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/boardList");
		boardService.deleteBoard(commandMap.getMap());
		return mv;
	}

	/* 화면전환을 위한 Controller */
	@RequestMapping(value = "/boardWrite")
	public ModelAndView boardWrite(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/boardRegist");
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
