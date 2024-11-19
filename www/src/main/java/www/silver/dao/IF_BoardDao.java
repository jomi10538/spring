package www.silver.dao;

import java.util.List;

import www.silver.vo.BoardVO;
import www.silver.vo.Pagevo;

public interface IF_BoardDao {
	// 디비작업이 목적
	// mybatis mapper랑 매핑해서 DB작업을 수행
	public void insertBoard(BoardVO boardvo)throws Exception;
	public List<BoardVO> selectAll(Pagevo pagevo) throws Exception;
	public void deleteBoard(String delno)throws Exception;
	public BoardVO selectOne(String title)throws Exception;
	public void updateBoard(BoardVO boardvo)throws Exception;
	public int cntBoard()throws Exception;
	public void insertAttach(String fname)throws Exception;
	public List<String> selectAllAttach(String no)throws Exception;
}

