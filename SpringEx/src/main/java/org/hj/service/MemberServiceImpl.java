package org.hj.service;

import org.hj.mapper.MemberMapper;
import org.hj.model.memberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements service {

    @Autowired
    private MemberMapper MemberMapper; // Assuming MemberMapper is correctly defined

    @Override
    public memberVO memberIdSearch(memberVO searchVO) {
        // Implement logic to search member by ID in the database
        return MemberMapper.findMemberById(searchVO.getMemberId());
    }
}
