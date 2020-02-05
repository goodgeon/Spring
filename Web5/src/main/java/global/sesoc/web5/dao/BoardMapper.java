package global.sesoc.web5.dao;

import java.util.ArrayList;

import global.sesoc.web5.paging.Paging;
import global.sesoc.web5.vo.Board;

public interface BoardMapper {

	ArrayList<Board> getList(Paging paging);

}
