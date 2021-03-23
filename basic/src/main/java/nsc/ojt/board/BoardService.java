package nsc.ojt.board;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import nsc.ojt.board.impl.BoardDAO;
import nsc.ojt.board.impl.BoardServiceImpl;

@Service
public class BoardService implements BoardServiceImpl{

	@Inject
	private BoardDAO boardDAO;
	
	@Override
	public List<Map<String, Object>> selectBoardList(Map<String, Object> map) throws Exception {
		return boardDAO.selectBoardList(map);
	}

}
