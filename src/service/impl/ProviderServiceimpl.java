package service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import POJO.Provider;
import commons.MybatisUtils;
import dao.ProviderMapper;
import service.ProviderService;

public class ProviderServiceimpl implements ProviderService {
	private ProviderMapper map;
	@Override
	public List<Provider> getProvider() {
		SqlSession sqlSession=MybatisUtils.createSqlSession();
		map=sqlSession.getMapper(ProviderMapper.class);
		List<Provider> list=map.getProvider();
		MybatisUtils.closeSqlSession(sqlSession);
		return list;
	}

}
