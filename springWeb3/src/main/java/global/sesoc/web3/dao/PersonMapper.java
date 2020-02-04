package global.sesoc.web3.dao;

import java.util.ArrayList;

import global.sesoc.web3.vo.Person;

public interface PersonMapper {

	void insertPerson(Person p);

	Person selectOne(String name);

	ArrayList<Person> selectAll();

	void deletePerson(String name);


}
