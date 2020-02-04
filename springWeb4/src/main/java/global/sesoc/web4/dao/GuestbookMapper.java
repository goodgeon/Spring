package global.sesoc.web4.dao;

import java.util.ArrayList;

import global.sesoc.web4.vo.Guestbook;

public interface GuestbookMapper {

	void insertGuestbook(Guestbook guestbook);

	ArrayList<Guestbook> getList();

	/*
	 * void deleteGuestbook(int num);
	 * 
	 * String checkPw(int num);
	 */

	void delete(Guestbook guestbook);

}
