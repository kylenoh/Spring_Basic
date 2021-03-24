package nsc.ojt.board;

import java.util.List;
import java.util.Map;

public interface BoardService {
	List<Map<String, Object>> selectBoardList(Map<String, Object> map) throws Exception;
	void boardRegist(Map<String, Object> map) throws Exception;
	Map<String, Object> selectBoardDetail(Map<String, Object> map) throws Exception;
	void updateBoard(Map<String, Object> map) throws Exception;
	void deleteBoard(Map<String, Object> map) throws Exception;

}
