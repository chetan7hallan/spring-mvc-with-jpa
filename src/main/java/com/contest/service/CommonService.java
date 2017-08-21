package com.contest.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.contest.repositories.CustomRepository;

@Service("commonService")
public class CommonService {

	@Autowired
	CustomRepository customRepository;
}
