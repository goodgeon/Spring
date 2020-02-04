package global.sesoc.web4.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.web4.vo.Guestbook;

@Repository
public class DAO {
	@Autowired
	SqlSession session;

	public void insertGuestbook(Guestbook guestbook) {
		GuestbookMapper mapper = session.getMapper(GuestbookMapper.class);
		
		mapper.insertGuestbook(guestbook);
		
	}

	public ArrayList<Guestbook> getList() {
		GuestbookMapper mapper = session.getMapper(GuestbookMapper.class);
		ArrayList<Guestbook> list = null;
		
		list = mapper.getList();
		return list;
	}

	public void delete(Guestbook guestbook) {
		GuestbookMapper mapper = session.getMapper(GuestbookMapper.class);
		mapper.delete(guestbook);
		
	}
	
	

	/*
	 * public void deleteGuestbook(int num) { GuestbookMapper mapper =
	 * session.getMapper(GuestbookMapper.class); mapper.deleteGuestbook(num);
	 * 
	 * }
	 */

	/*
	 * public void checkPw(int num, String inputPw) { String password;
	 * 
	 * GuestbookMapper mapper = session.getMapper(GuestbookMapper.class); password=
	 * mapper.checkPw(num);
	 * 
	 * if(inputPw.equals(password)) mapper.deleteGuestbook(num);
	 * 
	 * }
	 */
	
	
	
}
