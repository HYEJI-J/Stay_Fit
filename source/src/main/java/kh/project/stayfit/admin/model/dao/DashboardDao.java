package kh.project.stayfit.admin.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DashboardDao {
	@Autowired
	private SqlSession sqlsession;
	
	//관리자페이지
//	public Map<String,Object> selectList() throws Exception{
//		return sqlsession. ;
//	}

}
