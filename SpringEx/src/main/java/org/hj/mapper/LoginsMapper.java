package org.hj.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.hj.model.logins;

@Mapper
public interface LoginsMapper {
    logins logins(logins member);

	org.hj.model.logins logins(String id, String password);
}