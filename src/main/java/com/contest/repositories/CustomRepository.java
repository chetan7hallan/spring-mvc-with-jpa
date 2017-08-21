package com.contest.repositories;
import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.contest.bean.User;

public interface CustomRepository extends CrudRepository<User,Long>{

	List<User> findByMobile(String mobile);
}
