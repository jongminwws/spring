package org.hj.service;

import java.util.ArrayList;

import org.hj.model.CriteriaVO;
import org.hj.model.ReplyPageVO;
import org.hj.model.ReplyVO;

// 댓글 관련 서비스
public interface ReplyService {
	// 댓글 쓰기를 위한 설계
	public int rewrite(ReplyVO reply);
	// 댓글 목록 리스트를 위한 설계
	//public ArrayList<ReplyVO> list(int bno);
	public ReplyPageVO list(CriteriaVO cri, int bno);
	// 댓글 수정을 위한 설계
	public int modify(ReplyVO reply);
	// 댓글 삭제를 위한 설계
	public int remove(ReplyVO reply);
}
