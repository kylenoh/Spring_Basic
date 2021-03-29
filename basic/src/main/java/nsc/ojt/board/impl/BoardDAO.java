package nsc.ojt.board.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import nsc.ojt.common.repository.mybatis.impl.AbstractDAO;

@Repository
public class BoardDAO extends AbstractDAO {

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectBoardList(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) selectPagingList("board.selectBoardList", map);
	}

	public void boardRegist(Map<String, Object> map) throws Exception {
		insert("board.boardRegist", map);
	}

	public void updateCnt(Map<String, Object> map) throws Exception {
		update("board.updateCnt", map);
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> selectBoardDetail(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("board.selectBoardDetail", map);
	}

	public void updateBoard(Map<String, Object> map) throws Exception {
		update("board.updateBoard", map);
	}

	public void deleteBoard(Map<String, Object> map) throws Exception {
		update("board.deleteBoard", map);
	}

}
