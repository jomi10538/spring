package www.mara.dao;

import java.util.List;

import javax.inject.Inject;


import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import www.silver.vo.BoardVO;

@Repository
public class BoardDaoImpl implements IF_BoardDao{
	@Inject
	SqlSession sqlsession;
	final String mapperQuery="www.silver.dao.IF_BoardDao"; 
	
	@Override
	public void insertBoard(BoardVO boardvo) throws Exception{
		//sqlsession을 통해서 mapper와 매핑해야 하기에 정보를 넘겨준다.
        sqlsession.insert(mapperQuery +".inin", boardvo);
	}
	
	@Override
	public List<BoardVO> selectAll() throws Exception {
		return sqlsession.selectList(mapperQuery+".selectall");
		
	}
	
	@Override
	public void deleteBoard(String delno)throws Exception{
	
	sqlsession.delete(mapperQuery+".delone",delno);
    }

}
