package org.hj.mapper;

import org.hj.model.memberVO;

public interface MemberMapper {
    memberVO findMemberById(String id);
    // 다른 메서드 정의
}
