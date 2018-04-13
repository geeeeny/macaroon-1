package edu.iot.butter.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.iot.butter.dao.ReplyDao;
import edu.iot.butter.model.Reply;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	ReplyDao dao;

	@Override
	public Reply getReply(int replyId) throws Exception {
		return dao.selectOne(replyId);
	}

	@Transactional
	@Override
	public boolean create(Reply reply, Boolean hasParent) throws Exception {
			//hasParent를 통해 parentId가 있는지 없는지 파악한다.
		Boolean result;
		if (hasParent) {
			result = dao.insert(reply)==1;
			dao.increaseReplyCnt(reply.getParentReply());
		}else {
			result = dao.insertTop(reply)==1;
		}
		return result;
	}

	@Transactional
	@Override
	public boolean update(Reply reply) throws Exception {

		return dao.update(reply) == 1;
	}

	@Transactional
	@Override
	public boolean delete(Reply reply) throws Exception {

		return false;
	}

	@Transactional
	@Override
	public boolean delete(int boardId) throws Exception {

		return false;
	}

}