package global.sesoc.web3.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.web3.vo.Person;



@Repository
public class DAO {
	@Autowired
	private SqlSession session;
	
	public void insertPerson(Person person) {
		PersonMapper mapper = session.getMapper(PersonMapper.class);
		
		try {
			mapper.insertPerson(person);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public Person selectOne(String name) {
		PersonMapper mapper = session.getMapper(PersonMapper.class);
		Person p = mapper.selectOne(name);
		return p;
	}

	public ArrayList<Person> getList() {
		PersonMapper mapper = session.getMapper(PersonMapper.class);
		ArrayList<Person> list = mapper.selectAll();
		return list;
	}

	public void deletePerson(String name) {
		PersonMapper mapper = session.getMapper(PersonMapper.class);
		mapper.deletePerson(name);
		
	}


}
