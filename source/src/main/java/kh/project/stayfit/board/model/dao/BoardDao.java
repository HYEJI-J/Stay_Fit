package kh.project.stayfit.board.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDao {
	@Autowired
	private SqlSession sqlsession;

//	//커뮤니티 글목록 페이지,페이징
//	public List<Board> selectList(int, int) throws Exception{
//		return sqlsession.;
//	}
//	public int selectTotalCnt() throws Exception{
//		return sqlsession.;
//	}
	
//	//게시판 글 등록
//	public int write(Board) throws Exception{
//		return sqlsession.;
//	}
	
//	//게시판 글 검색, 페이징
//	public List<Board> selectList(int ,int , String ) throws Exception{
//		return sqlsession.;
//	}
//	public int selectTotalCnt(String) throws Exception{
//		return sqlsession.;
//	}
	
//	//게시글 수정
//	public int update(Board ) throws Exception{
//		return sqlsession.;
//	}
	
//	//게시글 삭제
//	public int delete(int) throws Exception{
//		return sqlsession.;
//	}
	
//	//게시글 상세페이지
//	public List<Board> read(int ) throws Exception{
//		return sqlsession.;
//	}
//	public List<Reply> seletList(int) throws Exception{
//		return sqlsession.;
//	}
	
//	//게시글 북마크
//	public int bmark(int ,String , ???) throws Exception{
//		return sqlsession.;
//	}
	
//	//게시글 반응
//	public int emotion(int ,int ,int ) throws Exception{
//		return sqlsession.;
//	}	

}
