package global.sesoc.web5.dao;

import java.util.ArrayList;

import global.sesoc.web5.vo.Board;
import global.sesoc.web5.vo.Reply;

public interface ReplyMapper {

	void insertReply(Reply reply);

	ArrayList<Reply> getReplyList(int boardNum);

	void updateReply(Reply reply);

	Reply getReply(int replyNum);

	

}
