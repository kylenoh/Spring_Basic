package nsc.ojt.board.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import nsc.ojt.common.ui.AbstractDAO;

@Repository
public class BoardDAO extends AbstractDAO{
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectBoardList(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) selectList("board.selectBoardList", map);
	}

}
