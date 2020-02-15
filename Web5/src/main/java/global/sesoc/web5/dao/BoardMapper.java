package global.sesoc.web5.dao;

import java.util.ArrayList;
import java.util.HashMap;

import global.sesoc.web5.paging.Paging;
import global.sesoc.web5.vo.Board;

public interface BoardMapper {

	ArrayList<Board> getList(Paging paging);

	void write(Board board);

	Board getBoard(int boardNum);

	void updateBoard(Board board);

	void updateHits(int boardNum);

	void deleteBoard(int boardNum);

	int getEntireSize();
	
	ArrayList<Board> getSearchList(HashMap<String, Object> map);

	int getSearchSize(String title);

}
