package global.sesoc.web5.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.web5.vo.Board;
import global.sesoc.web5.vo.Member;

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

	public ArrayList<Board> getList() {
		BoardMapper mapper = session.getMapper(BoardMapper.class);
		
		ArrayList<Board> list = mapper.getList();
		
		
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

}
