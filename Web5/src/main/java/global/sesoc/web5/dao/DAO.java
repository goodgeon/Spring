package global.sesoc.web5.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.web5.paging.Paging;
import global.sesoc.web5.vo.Board;
import global.sesoc.web5.vo.Member;
import global.sesoc.web5.vo.Reply;

@Repository
public class DAO {
	@Autowired
	SqlSession session;

	public Member login(Member member) {
		MemberMapper mapper = session.getMapper(MemberMapper.class);
		Member res;
		
		res = mapper.login(member);
		
		if(res != null)
			return res;
		
		return null;
	}

	public ArrayList<Board> getList(int currentPage, Paging paging) {
		BoardMapper mapper = session.getMapper(BoardMapper.class);
		
		ArrayList<Board> list = mapper.getList(paging);
		
		return list;
	}

	public void updateMemberInfo(Member member) {
		MemberMapper mapper = session.getMapper(MemberMapper.class);
		mapper.updateMemberInfo(member);
		
	}

	public void join(Member m) {
		MemberMapper mapper = session.getMapper(MemberMapper.class);
		mapper.join(m);
		
	}

	public Member getMember(String searchID) {
		MemberMapper mapper = session.getMapper(MemberMapper.class);
		Member member = mapper.getMember(searchID);
		
		return member;
	}

	public void write(Board board) {
		BoardMapper mapper = session.getMapper(BoardMapper.class);
		mapper.write(board);
	}

	public Board getBoard(int boardNum) {
		BoardMapper mapper = session.getMapper(BoardMapper.class);
		Board board = mapper.getBoard(boardNum);
		
		return board;
	}

	public void updateBoard(Board board) {
		BoardMapper mapper = session.getMapper(BoardMapper.class);
		mapper.updateBoard(board);
		
	}

	public void updateHits(int boardNum) {
		BoardMapper mapper = session.getMapper(BoardMapper.class);
		mapper.updateHits(boardNum);
	}

	public void deleteBoard(int boardNum) {
		BoardMapper mapper = session.getMapper(BoardMapper.class);
		mapper.deleteBoard(boardNum);
	}

	public int getEntireSize() {
		BoardMapper mapper = session.getMapper(BoardMapper.class);
		int entireSize = mapper.getEntireSize();
		
		return entireSize;
	}

	public void insertReply(Reply reply) {
		ReplyMapper mapper = session.getMapper(ReplyMapper.class);
		mapper.insertReply(reply);
	}

	public ArrayList<Reply> getReplyList(int boardNum) {
		ReplyMapper mapper = session.getMapper(ReplyMapper.class);
		ArrayList<Reply> list = mapper.getReplyList(boardNum);
		
		return list;
	}

}
