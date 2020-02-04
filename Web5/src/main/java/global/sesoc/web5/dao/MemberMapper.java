package global.sesoc.web5.dao;

import global.sesoc.web5.vo.Member;

public interface MemberMapper {

	Member login(Member member);

	void updateMemberInfo(Member member);

	void join(Member m);

	Member getMember(String searchID);

}
