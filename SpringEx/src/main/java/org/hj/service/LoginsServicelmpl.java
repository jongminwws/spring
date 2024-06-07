package org.hj.service;
import org.hj.model.logins;
import org.hj.mapper.LoginsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginsServicelmpl implements LoginsService {
	@Autowired
	LoginsMapper lsm;
	
	public logins logins (logins member) {
		System.out.println("service="+member);
		System.out.println("service return="+lsm.logins(member));
		return lsm.logins(member);
	}
}
